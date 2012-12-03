// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_backend;

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

  handshake() {
    if (_serverSocket == null) {
      _serverSocket = new ServerSocket(_bindAddress, _port, 0);
      _serverSocket.onConnection = _onConnection;
    }
  }
  
  _onConnection(Socket socket) {
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
  
  _ack() {
    try {
      _inStream.readLine();
    } on SocketIOException catch(ioe, stackTrace) {
      stderr.writeString(ioe.toString());
      stderr.writeString(stackTrace);
    }
  }
  

  commence() {}

  terminate() {
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

  _transmit(String event) { 
   if(_outStream != null)
     _outStream.writeString("$event\n"); 
   if(_callback == null)
     _ack();
  }

  enterRule(String ruleName, [String grammarFileName]) {
    _transmit("enterRule\t$grammarFileName\t$ruleName");
  }

  enterAlt(int alt) {
    _transmit("enterAlt\t$alt");
  }

  exitRule(String ruleName, [String grammarFileName]) {
    _transmit("exitRule\t$grammarFileName\t$ruleName");
  }

  enterSubRule(int decisionNumber) {
    _transmit("enterSubRule\t$decisionNumber");
  }

  exitSubRule(int decisionNumber) {
    _transmit("exitSubRule\t$decisionNumber");
  }

  enterDecision(int decisionNumber, bool couldBacktrack) {
    _transmit("enterDecision\t$decisionNumber\t$couldBacktrack");
  }

  exitDecision(int decisionNumber) {
    _transmit("exitDecision\t$decisionNumber");
  }

  consumeToken(Token t) {
    String buf = _serializeToken(t);
    _transmit("consumeToken\t$buf");
  }

  consumeHiddenToken(Token t) {
    String buf = _serializeToken(t);
    _transmit("consumeHiddenToken\t$buf");
  }

  mark(int i) {
    _transmit("mark\t$i");
  }

  rewind([int marker]) {
    _transmit("rewind\t$marker");
  }

  beginBacktrack(int level) {
    _transmit("beginBacktrack\t$level");
  }

  endBacktrack(int level, bool successful) {
    _transmit("endBacktrack\t$level\t"
      "${(successful ? DebugEventListener.TRUE : DebugEventListener.FALSE)}");
  }

  location(int line, int pos) {
    _transmit("location\t$line\t$pos");
  }

  recognitionException(RecognitionException e) {
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

  beginResync() {
    _transmit("beginResync");
  }

  endResync() {
    _transmit("endResync");
  }

  semanticPredicate(bool result, String predicate) {
    StringBuffer buf = new StringBuffer();
    buf.add("semanticPredicate\t");
    buf.add(result);
    _serializeText(buf, predicate);
    _transmit(buf.toString());
  }

  consumeNode(t) {
    StringBuffer buf = new StringBuffer();
    buf.add("consumeNode");
    _serializeNode(buf, t);
    _transmit(buf.toString());
  }

  LT(int i, t) {
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

  _serializeNode(StringBuffer buf, t) {
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

  nilNode(t) {
    int ID = _adaptor.getUniqueID(t);
    _transmit("nilNode\t$ID");
  }

  errorNode(t) {
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

  createNode(t, [Token token]) {
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

  becomeRoot(newRoot, oldRoot) {
    int newRootID = _adaptor.getUniqueID(newRoot);
    int oldRootID = _adaptor.getUniqueID(oldRoot);
    _transmit("becomeRoot\t$newRootID\t$oldRootID");
  }

  addChild(root, child) {
    int rootID = _adaptor.getUniqueID(root);
    int childID = _adaptor.getUniqueID(child);
    _transmit("addChild\t$rootID\t$childID");
  }

  setTokenBoundaries(t, int tokenStartIndex, int tokenStopIndex) {
    int ID = _adaptor.getUniqueID(t);
    _transmit("setTokenBoundaries\t$ID\t$tokenStartIndex\t$tokenStopIndex");
  }

  set treeAdaptor(TreeAdaptor adaptor) { 
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

  _serializeText(StringBuffer buf, String text) {
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


