// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A proxy debug event listener that forwards events over a socket to
 *  a debugger (or any other listener) using a simple text-based protocol;
 *  one event per line.  ANTLRWorks listens on server socket with a
 *  [RemoteDebugEventSocketListener] instance.  These two objects must therefore
 *  be kept in sync.  New events must be handled on both sides of socket.
 */
class DebugEventSocketProxy extends BlankDebugEventListener {  
  
  static const int DEFAULT_DEBUGGER_PORT = 49100;
  static const String DEFAULT_BINDADDRESS = "127.0.0.1";
  String _bindAddress = DEFAULT_BINDADDRESS;
  int _port = DEFAULT_DEBUGGER_PORT;
  ServerSocket _serverSocket;
  Socket _socket;
  String _grammarFileName;
  StringInputStream _inStream;
  OutputStream _outStream;
  BaseRecognizer _recognizer;
  TreeAdaptor _adaptor;
  Function _callback;
  
  DebugEventSocketProxy(this._recognizer, 
        this._adaptor, [this._port = DEFAULT_DEBUGGER_PORT, this._callback]) {
    _grammarFileName = _recognizer.grammarFileName;
  }

  void handshake() {
    if (_serverSocket == null) {
      _serverSocket = new ServerSocket(_bindAddress, _port, 0);
      _serverSocket.onConnection = _onConnection;
    }
  }
  
  void _onConnection(Socket socket) {
    _socket = socket; 
    _inStream = new StringInputStream(socket.inputStream);
    _outStream =  _socket.outputStream;
    _outStream.writeString("ANTLR ${DebugEventListener.PROTOCOL_VERSION}\t");
    _outStream.writeString("grammar \"${_grammarFileName}\n");
    if(_callback != null)
      _callback();
    else
      _ack();
  }  
  
  void _ack() {
    try {
      _inStream.readLine();
    } on SocketIOException catch(ioe, stackTrace) {
      stderr.writeString(ioe.toString());
      stderr.writeString(stackTrace);
    }
  }
  

  void commence() {}

  void terminate() {
    _transmit("terminate");
    try {
      if(_socket != null)
        _socket.close();
      if(_serverSocket != null)
        _serverSocket.close();
    } on SocketIOException catch(ioe, stackTrace) {
      stderr.writeString(stackTrace);
    }
  }

  void _transmit(String event) { 
   if(_outStream != null)
     _outStream.writeString("$event\n"); 
   if(_callback == null)
     _ack();
  }

  void enterRule(String ruleName, [String grammarFileName]) {
    _transmit("enterRule\t$grammarFileName\t$ruleName");
  }

  void enterAlt(int alt) {
    _transmit("enterAlt\t$alt");
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    _transmit("exitRule\t$grammarFileName\t$ruleName");
  }

  void enterSubRule(int decisionNumber) {
    _transmit("enterSubRule\t$decisionNumber");
  }

  void exitSubRule(int decisionNumber) {
    _transmit("exitSubRule\t$decisionNumber");
  }

  void enterDecision(int decisionNumber, bool couldBacktrack) {
    _transmit("enterDecision\t$decisionNumber\t$couldBacktrack");
  }

  void exitDecision(int decisionNumber) {
    _transmit("exitDecision\t$decisionNumber");
  }

  void consumeToken(Token t) {
    String buf = _serializeToken(t);
    _transmit("consumeToken\t$buf");
  }

  void consumeHiddenToken(Token t) {
    String buf = _serializeToken(t);
    _transmit("consumeHiddenToken\t$buf");
  }

  void mark(int i) {
    _transmit("mark\t$i");
  }

  void rewind([int marker]) {
    _transmit("rewind\t$marker");
  }

  void beginBacktrack(int level) {
    _transmit("beginBacktrack\t$level");
  }

  void endBacktrack(int level, bool successful) {
    _transmit("endBacktrack\t$level\t"
      "${(successful ? DebugEventListener.TRUE : DebugEventListener.FALSE)}");
  }

  void location(int line, int pos) {
    _transmit("location\t$line\t$pos");
  }

  void recognitionException(RecognitionException e) {
    StringBuffer buf = new StringBuffer();
    buf.add("exception\t");
    buf.add(e.runtimeType.toString());
    buf.add("\t");
    buf.add(e.index);
    buf.add("\t");
    buf.add(e.line);
    buf.add("\t");
    buf.add(e.charPositionInLine);
    _transmit(buf.toString());
  }

  void beginResync() {
    _transmit("beginResync");
  }

  void endResync() {
    _transmit("endResync");
  }

  void semanticPredicate(bool result, String predicate) {
    StringBuffer buf = new StringBuffer();
    buf.add("semanticPredicate\t");
    buf.add(result);
    _serializeText(buf, predicate);
    _transmit(buf.toString());
  }

  void consumeNode(Object t) {
    StringBuffer buf = new StringBuffer();
    buf.add("consumeNode");
    _serializeNode(buf, t);
    _transmit(buf.toString());
  }

  void LT(int i, Object t) {
    if(t is Token) {
      _transmit("LT\t$i\t${_serializeToken(t)}");
    } else {
      StringBuffer buf = new StringBuffer();
      buf.add("LN\t"); 
      buf.add(i);
      _serializeNode(buf, t);
      _transmit(buf.toString());
    }
  }

  void _serializeNode(StringBuffer buf, Object t) {
    int ID = _adaptor.getUniqueID(t);
    String text = _adaptor.getText(t);
    int type = _adaptor.getType(t);
    buf.add("\t");
    buf.add(ID);
    buf.add("\t");
    buf.add(type);
    Token token = _adaptor.getToken(t);
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
    int tokenIndex = _adaptor.getTokenStartIndex(t);
    buf.add("\t");
    buf.add(tokenIndex);
    _serializeText(buf, text);
  }

  void nilNode(Object t) {
    int ID = _adaptor.getUniqueID(t);
    _transmit("nilNode\t$ID");
  }

  void errorNode(Object t) {
    int ID = _adaptor.getUniqueID(t);
    String text = t.toString();
    StringBuffer buf = new StringBuffer();
    buf.add("errorNode\t");
    buf.add(ID);
    buf.add("\t");
    buf.add(Token.INVALID_TOKEN_TYPE);
    _serializeText(buf, text);
    _transmit(buf.toString());
  }

  void createNode(Object t, [Token token]) {
    if(token != null) {
      int ID = _adaptor.getUniqueID(t);
      int tokenIndex = token.tokenIndex;
      _transmit("createNode\t$ID\t$tokenIndex");
    } else {
      int ID = _adaptor.getUniqueID(t);
      String text = _adaptor.getText(t);
      int type = _adaptor.getType(t);
      StringBuffer buf = new StringBuffer();
      buf.add("createNodeFromTokenElements\t");
      buf.add(ID);
      buf.add("\t");
      buf.add(type);
      _serializeText(buf, text);
      _transmit(buf.toString());
    }
  }

  void becomeRoot(Object newRoot, Object oldRoot) {
    int newRootID = _adaptor.getUniqueID(newRoot);
    int oldRootID = _adaptor.getUniqueID(oldRoot);
    _transmit("becomeRoot\t$newRootID\t$oldRootID");
  }

  void addChild(Object root, Object child) {
    int rootID = _adaptor.getUniqueID(root);
    int childID = _adaptor.getUniqueID(child);
    _transmit("addChild\t$rootID\t$childID");
  }

  void setTokenBoundaries(Object t, int tokenStartIndex, int tokenStopIndex) {
    int ID = _adaptor.getUniqueID(t);
    _transmit("setTokenBoundaries\t$ID\t$tokenStartIndex\t$tokenStopIndex");
  }

  void set treeAdaptor(TreeAdaptor adaptor) { 
    _adaptor = adaptor; 
  }
  
  TreeAdaptor get treeAdaptor => _adaptor;

  String _serializeToken(Token t) {
    StringBuffer buf = new StringBuffer();
    buf.add(t.tokenIndex); buf.add('\t');
    buf.add(t.type); buf.add('\t');
    buf.add(t.channel); buf.add('\t');
    buf.add(t.line); buf.add('\t');
    buf.add(t.charPositionInLine);
    _serializeText(buf, t.text);
    return buf.toString();
  }

  void _serializeText(StringBuffer buf, String text) {
    buf.add('\t"');
    if (text == null) text = "";
    text = _escapeNewlines(text);
    buf.add(text);
  }

  String _escapeNewlines(String txt) {   
    txt = txt.replaceAll("%","%25");  
    txt = txt.replaceAll("\n","%0A"); 
    txt = txt.replaceAll("\r","%0D");   
    return txt;
  }
}


