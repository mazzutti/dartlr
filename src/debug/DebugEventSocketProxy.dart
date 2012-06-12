// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A proxy debug event listener that forwards events over a socket to
 *  a debugger (or any other listener) using a simple text-based protocol;
 *  one event per line.  ANTLRWorks listens on server socket with a
 *  [RemoteDebugEventSocketListener] instance.  These two objects must therefore
 *  be kept in sync.  New events must be handled on both sides of socket.
 */
class DebugEventSocketProxy extends BlankDebugEventListener {  
  
  static final int DEFAULT_DEBUGGER_PORT = 49100;
  static final String DEFAULT_BINDADDRESS = "127.0.0.1";
  String _bindAddress = DEFAULT_BINDADDRESS;
  int _port = DEFAULT_DEBUGGER_PORT;
  ServerSocket _serverSocket;
  Socket _socket;
  String _grammarFileName;
  StringInputStream _inStream;
  SocketOutputStream _outStream;
  BaseRecognizer _recognizer;
  TreeAdaptor _adaptor;
  Function _callback;
  
  DebugEventSocketProxy(this._recognizer, 
        this._adaptor, [this._port = DEFAULT_DEBUGGER_PORT, this._callback]) {
    this._grammarFileName = this._recognizer.grammarFileName;
  }

  void handshake() {
    if (this._serverSocket == null) {
      this._serverSocket = new ServerSocket(this._bindAddress, this._port, 0);
      this._serverSocket.onConnection = this._onConnection;
    }
  }
  
  void _onConnection(Socket socket) {
    this._socket = socket; 
    this._inStream = new StringInputStream(new SocketInputStream(socket));
    this._outStream =  new SocketOutputStream(this._socket);
    this._outStream.writeString("ANTLR ${DebugEventListener.PROTOCOL_VERSION}\t");
    this._outStream.writeString("grammar \"${this._grammarFileName}\n");
    if(this._callback != null)
      this._callback();
    else
      this._ack();
  }  
  
  void _ack() {
    try {
      this._inStream.readLine();
    } catch (SocketIOException ioe, var stackTrace) {
      stderr.writeString(ioe.toString());
      stderr.writeString(stackTrace);
    }
  }
  

  void commence() {}

  void terminate() {
    this._transmit("terminate");
    try {
      if(this._socket != null)
        this._socket.close();
      if(this._serverSocket != null)
        this._serverSocket.close();
    }
    catch (SocketIOException ioe, var stackTrace) {
      stderr.writeString(stackTrace);
    }
  }

  void _transmit(String event) { 
   if(this._outStream != null)
     this._outStream.writeString("$event\n"); 
   if(this._callback == null)
     this._ack();
  }

  void enterRule(String ruleName, [String grammarFileName]) {
    this._transmit("enterRule\t$grammarFileName\t$ruleName");
  }

  void enterAlt(int alt) {
    this._transmit("enterAlt\t$alt");
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    this._transmit("exitRule\t$grammarFileName\t$ruleName");
  }

  void enterSubRule(int decisionNumber) {
    this._transmit("enterSubRule\t$decisionNumber");
  }

  void exitSubRule(int decisionNumber) {
    this._transmit("exitSubRule\t$decisionNumber");
  }

  void enterDecision(int decisionNumber, bool couldBacktrack) {
    this._transmit("enterDecision\t$decisionNumber\t$couldBacktrack");
  }

  void exitDecision(int decisionNumber) {
    this._transmit("exitDecision\t$decisionNumber");
  }

  void consumeToken(Token t) {
    String buf = this._serializeToken(t);
    this._transmit("consumeToken\t$buf");
  }

  void consumeHiddenToken(Token t) {
    String buf = this._serializeToken(t);
    this._transmit("consumeHiddenToken\t$buf");
  }

  void mark(int i) {
    this._transmit("mark\t$i");
  }

  void rewind([int marker]) {
    this._transmit("rewind\t$marker");
  }

  void beginBacktrack(int level) {
    this._transmit("beginBacktrack\t$level");
  }

  void endBacktrack(int level, bool successful) {
    this._transmit("endBacktrack\t$level\t"
      "${(successful ? DebugEventListener.TRUE : DebugEventListener.FALSE)}");
  }

  void location(int line, int pos) {
    this._transmit("location\t$line\t$pos");
  }

  void recognitionException(RecognitionException e) {
    StringBuffer buf = new StringBuffer();
    buf.add("exception\t");
    buf.add(e.className);
    buf.add("\t");
    buf.add(e.index);
    buf.add("\t");
    buf.add(e.line);
    buf.add("\t");
    buf.add(e.charPositionInLine);
    this._transmit(buf.toString());
  }

  void beginResync() {
    this._transmit("beginResync");
  }

  void endResync() {
    this._transmit("endResync");
  }

  void semanticPredicate(bool result, String predicate) {
    StringBuffer buf = new StringBuffer();
    buf.add("semanticPredicate\t");
    buf.add(result);
    this._serializeText(buf, predicate);
    this._transmit(buf.toString());
  }

  void consumeNode(Object t) {
    StringBuffer buf = new StringBuffer();
    buf.add("consumeNode");
    this._serializeNode(buf, t);
    this._transmit(buf.toString());
  }

  void LT(int i, Object t) {
    if(t is Token) {
      this._transmit("LT\t$i\t${this._serializeToken(t)}");
    } else {
      StringBuffer buf = new StringBuffer();
      buf.add("LN\t"); 
      buf.add(i);
      this._serializeNode(buf, t);
      this._transmit(buf.toString());
    }
  }

  void _serializeNode(StringBuffer buf, Object t) {
    int ID = this._adaptor.getUniqueID(t);
    String text = this._adaptor.getText(t);
    int type = this._adaptor.getType(t);
    buf.add("\t");
    buf.add(ID);
    buf.add("\t");
    buf.add(type);
    Token token = this._adaptor.getToken(t);
    int line = -1;
    int pos = -1;
    if ( token!=null ) {
      line = token.line;
      pos = token.charPositionInLine;
    }
    buf.add("\t");
    buf.add(line);
    buf.add("\t");
    buf.add(pos);
    int tokenIndex = this._adaptor.getTokenStartIndex(t);
    buf.add("\t");
    buf.add(tokenIndex);
    this._serializeText(buf, text);
  }

  void nilNode(Object t) {
    int ID = this._adaptor.getUniqueID(t);
    this._transmit("nilNode\t$ID");
  }

  void errorNode(Object t) {
    int ID = this._adaptor.getUniqueID(t);
    String text = t.toString();
    StringBuffer buf = new StringBuffer();
    buf.add("errorNode\t");
    buf.add(ID);
    buf.add("\t");
    buf.add(Token.INVALID_TOKEN_TYPE);
    this._serializeText(buf, text);
    this._transmit(buf.toString());
  }

  void createNode(Object t, [Token token]) {
    if(token != null) {
      int ID = this._adaptor.getUniqueID(t);
      int tokenIndex = token.tokenIndex;
      this._transmit("createNode\t$ID\t$tokenIndex");
    } else {
      int ID = this._adaptor.getUniqueID(t);
      String text = this._adaptor.getText(t);
      int type = this._adaptor.getType(t);
      StringBuffer buf = new StringBuffer();
      buf.add("createNodeFromTokenElements\t");
      buf.add(ID);
      buf.add("\t");
      buf.add(type);
      this._serializeText(buf, text);
      this._transmit(buf.toString());
    }
  }

  void becomeRoot(Object newRoot, Object oldRoot) {
    int newRootID = this._adaptor.getUniqueID(newRoot);
    int oldRootID = this._adaptor.getUniqueID(oldRoot);
    this._transmit("becomeRoot\t$newRootID\t$oldRootID");
  }

  void addChild(Object root, Object child) {
    int rootID = this._adaptor.getUniqueID(root);
    int childID = this._adaptor.getUniqueID(child);
    this._transmit("addChild\t$rootID\t$childID");
  }

  void setTokenBoundaries(Object t, int tokenStartIndex, int tokenStopIndex) {
    int ID = this._adaptor.getUniqueID(t);
    this._transmit("setTokenBoundaries\t$ID\t$tokenStartIndex\t$tokenStopIndex");
  }

  void set treeAdaptor(TreeAdaptor adaptor) { 
    this._adaptor = adaptor; 
  }
  
  TreeAdaptor get treeAdaptor() => this._adaptor;

  String _serializeToken(Token t) {
    StringBuffer buf = new StringBuffer();
    buf.add(t.tokenIndex); buf.add('\t');
    buf.add(t.type); buf.add('\t');
    buf.add(t.channel); buf.add('\t');
    buf.add(t.line); buf.add('\t');
    buf.add(t.charPositionInLine);
    this._serializeText(buf, t.text);
    return buf.toString();
  }

  void _serializeText(StringBuffer buf, String text) {
    buf.add('\t"');
    if (text == null) text = "";
    text = this._escapeNewlines(text);
    buf.add(text);
  }

  String _escapeNewlines(String txt) {   
    txt = txt.replaceAll("%","%25");  
    txt = txt.replaceAll("\n","%0A"); 
    txt = txt.replaceAll("\r","%0D");   
    return txt;
  }
}


