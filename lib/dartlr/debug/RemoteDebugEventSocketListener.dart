part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class RemoteDebugEventSocketListener {
  
  static const int MAX_EVENT_ELEMENTS = 8;
  static const DEFAULT_PORT = 49100;
  DebugEventListener listener;
  String machine;
  int port;
  Socket channel = null;
  SocketOutputStream outStream;
  StringInputStream inStream;
  String event;
  
  String version;
  String grammarFileName;
  
  /** Track the last token index we saw during a consume.  If same, then
   *  set a flag that we have a problem.
   */
  int previousTokenIndex = -1;
  bool tokenIndexesInvalid = false;
  Function callback;

  RemoteDebugEventSocketListener
     (this.listener, this.machine, [this.port = DEFAULT_PORT , this.callback]) {
    this._openConnection((success) {      
      if(!success)
         throw new SocketIOException();      
    });
  }

  void _openConnection(void cb(bool success)) {
    try {
      this.channel = new Socket(machine, port);
      this.channel.onConnect = () { 
        this.outStream = new SocketOutputStream(this.channel);
        this.inStream = new StringInputStream(new SocketInputStream(this.channel)); 
        this.inStream.onLine = () => this._dispatch(this.inStream.readLine());
        cb(true);
      };
    } on Exception catch(e) {
       stderr.writeString(e.toString());
    }    
  }

  void _closeConnection() {
    try {
      this.inStream = null;
      this.outStream.close(); 
      this.outStream = null;
      this.channel.close(); 
      this.channel = null;
    } on Exception catch(e, stackTrace) {
      stderr.writeString(e.toString());
      stderr.writeString(stackTrace);
    }
    finally {
      if(this.outStream != null) {
        this.outStream.close();
      }
      if(this.channel != null) {
        try {this.channel.close();} 
        on SocketIOException catch(ioe) {
          stderr.writeString(ioe.toString());
        }
      }
    }
  }

  void _dispatch(String line) {   
    List<String> elements = this.getEventElements(line);   
    if(elements == null || elements[0] == null) {
      stderr.writeString("unknown debug event: $line");
      return;
    }
    if(elements[0] == "ANTLR"){
      version = elements[1];
      grammarFileName = elements[2];     
      this.listener.commence();
    }
    else if(elements[0] == "enterRule") {
      listener.enterRule(elements[2], elements[1]);
    }
    else if(elements[0] == "exitRule") {
      listener.exitRule(elements[2], elements[1]);
    }
    else if(elements[0] == "enterAlt") {
      listener.enterAlt(int.parse(elements[1]));
    }
    else if(elements[0] == "enterSubRule") {
      listener.enterSubRule(int.parse(elements[1]));
    }
    else if(elements[0] == "exitSubRule") {
      listener.exitSubRule(int.parse(elements[1]));
    }
    else if(elements[0] == "enterDecision") {
      listener.enterDecision(int.parse(elements[1]), elements[2] == "true");
    }    
    else if(elements[0] == "exitDecision") {
      listener.exitDecision(int.parse(elements[1]));
    }
    else if(elements[0] == "location") {
      listener.location(int.parse(elements[1]),
        int.parse(elements[2]));
    }
    else if(elements[0] == "consumeToken") {
      ProxyToken t = this._deserializeToken(elements, 1);
      if(t.tokenIndex == previousTokenIndex ) {
        tokenIndexesInvalid = true;
      }
      previousTokenIndex = t.tokenIndex;
      listener.consumeToken(t);
    }
    else if(elements[0] == "consumeHiddenToken") {
      ProxyToken t = this._deserializeToken(elements, 1);
      if(t.tokenIndex == previousTokenIndex) {
        tokenIndexesInvalid = true;
      }
      previousTokenIndex = t.tokenIndex;
      listener.consumeHiddenToken(t);
    }
    else if(elements[0] == "LT") {
      Token t = this._deserializeToken(elements, 2);      
      listener.LT(int.parse(elements[1]), t);
    }
    else if(elements[0] == "mark") {
      listener.mark(int.parse(elements[1]));
    }
    else if(elements[0] == "rewind") {
      if(elements[1] != null) {
        listener.rewind(int.parse(elements[1]));
      }
      else {
        listener.rewind();
      }
    }
    else if(elements[0] == "beginBacktrack") {
      listener.beginBacktrack(int.parse(elements[1]));
    }
    else if(elements[0] == "endBacktrack") {
      int level = int.parse(elements[1]);
      int successI = int.parse(elements[2]);
      listener.endBacktrack(level, (successI == DebugEventListener.TRUE));
    }
    else if(elements[0] == "exception") {
      String excName = elements[1];
      String indexS = elements[2];
      String lineS = elements[3];
      String posS = elements[4];      
      RecognitionException e = this._createRecognitionException(excName);
      e.index = int.parse(indexS);
      e.line = int.parse(lineS);
      e.charPositionInLine =  int.parse(posS);
      listener.recognitionException(e);      
    }    
    else if(elements[0] == "beginResync") {
      listener.beginResync();
    }
    else if(elements[0] == "endResync") {
      listener.endResync();
    }
    else if(elements[0] == "terminate") {
      listener.terminate();      
      this._closeConnection();
      if(this.callback != null)
        this.callback();
    }
    else if(elements[0] == "semanticPredicate") {
      bool result = elements[1] == "true";
      String predicateText = elements[2];
      predicateText = this._unEscapeNewlines(predicateText);
      listener.semanticPredicate(result,  predicateText);
    }
    else if(elements[0] == "consumeNode") {
      ProxyTree node = this._deserializeNode(elements, 1);
      listener.consumeNode(node);
    }
    else if(elements[0] == "LN") {
      int i = int.parse(elements[1]);
      ProxyTree node = this._deserializeNode(elements, 2);
      listener.LT(i, node);
    }
    else if(elements[0] == "createNodeFromTokenElements") {
      int ID = int.parse(elements[1]);
      int type = int.parse(elements[2]);
      String text = elements[3];
      text = this._unEscapeNewlines(text);
      ProxyTree node = new ProxyTree(ID, type, -1, -1, -1, text);
      listener.createNode(node);
    }
    else if(elements[0] == "createNode") {
      int ID = int.parse(elements[1]);
      int tokenIndex = int.parse(elements[2]);
      ProxyTree node = new ProxyTree(ID);
      ProxyToken token = new ProxyToken(tokenIndex);
      listener.createNode(node, token);
    }
    else if(elements[0] == "nilNode") {
      int ID = int.parse(elements[1]);
      ProxyTree node = new ProxyTree(ID);
      listener.nilNode(node);
    }
    else if(elements[0] == "errorNode") {
      int ID = int.parse(elements[1]);
      int type = int.parse(elements[2]);
      String text = elements[3];
      text = this._unEscapeNewlines(text);
      ProxyTree node = new ProxyTree(ID, type, -1, -1, -1, text);
      listener.errorNode(node);
    }
    else if(elements[0] == "becomeRoot") {
      int newRootID = int.parse(elements[1]);
      int oldRootID = int.parse(elements[2]);
      ProxyTree newRoot = new ProxyTree(newRootID);
      ProxyTree oldRoot = new ProxyTree(oldRootID);
      listener.becomeRoot(newRoot, oldRoot);
    }
    else if(elements[0] == "addChild") {
      int rootID = int.parse(elements[1]);
      int childID = int.parse(elements[2]);
      ProxyTree root = new ProxyTree(rootID);
      ProxyTree child = new ProxyTree(childID);
      listener.addChild(root, child);
    }
    else if(elements[0] == "setTokenBoundaries") {
      int ID = int.parse(elements[1]);
      ProxyTree node = new ProxyTree(ID);
      listener.setTokenBoundaries(node,
              int.parse(elements[2]),
                   int.parse(elements[3]));
    }
    else {
      stderr.writeString("unknown debug event: $line");
    }
  }

  ProxyTree _deserializeNode(List<String> elements, int offset) {
    int ID = int.parse(elements[offset+0]);
    int type = int.parse(elements[offset+1]);
    int tokenLine = int.parse(elements[offset+2]);
    int charPositionInLine = int.parse(elements[offset+3]);
    int tokenIndex = int.parse(elements[offset+4]);
    String text = elements[offset+5];
    text = this._unEscapeNewlines(text);
    return new ProxyTree(ID, type, 
      tokenLine, charPositionInLine, tokenIndex, text);
  }

  ProxyToken _deserializeToken(List<String> elements, int offset){
    String indexS = elements[offset+0];
    String typeS = elements[offset+1];
    String channelS = elements[offset+2];
    String lineS = elements[offset+3];
    String posS = elements[offset+4];
    String text = elements[offset+5];
    text = this._unEscapeNewlines(text);
    int index = int.parse(indexS);
    ProxyToken t =
      new ProxyToken(index,
               int.parse(typeS),
               int.parse(channelS),
               int.parse(lineS),
               int.parse(posS),
               text);
    return t;
  }

  List<String> getEventElements(String evt) {
    if(evt == null) return null;
    List<String> elements = new List<String>();
    String str = null; 
    try {
      int firstQuoteIndex = evt.indexOf('"');      
      if(firstQuoteIndex >= 0 ) {
        String eventWithoutString = evt.substring(0, firstQuoteIndex);
        str = evt.substring(firstQuoteIndex + 1, evt.length);
        evt = eventWithoutString.substring(0, eventWithoutString.length - 1);       
      }
      List<String> st = evt.split("\t");
      int i = 0;
      Iterator iter = st.iterator();
      while (iter.hasNext()) {
        if(i >= MAX_EVENT_ELEMENTS)
          return elements;
        elements.add(iter.next());
        i++;
      }
      if(str != null)
        elements.add(str);
    }
    on Exception catch(e, stackTrace) {
      stderr.writeString(stackTrace);
    }
    return elements;
  }

  String _unEscapeNewlines(String txt) {    
    txt = txt.replaceAll("%0A","\n");
    txt = txt.replaceAll("%0D","\r");
    txt = txt.replaceAll("%25","%");
    return txt;
  }

  bool tokenIndexesAreInvalid() => false;
  
  RecognitionException _createRecognitionException(String className) {
    switch(className) {
      case "NoViableAltException":
        return new NoViableAltException();
      case "FailedPredicateException":
        return new FailedPredicateException();
      case "EarlyExitException":
        return new EarlyExitException();
      case "MismatchedNotSetException":
        return new MismatchedNotSetException();
      case "MismatchedRangeException":
        return new MismatchedRangeException();
      case "MismatchedSetException":
        return new MismatchedSetException();
      case "MismatchedTreeNodeException":
        return new MismatchedTreeNodeException();
      case "MissingTokenException":
        return new MissingTokenException();
      case "UnwantedTokenException":
        return new UnwantedTokenException();
      default:
        return new RecognitionException();
    }
  }

}

class ProxyToken extends Token {
  
  int _index;
  int _type;
  int _channel;
  int _line;
  int _charPos;
  String _text;
  
  ProxyToken(this._index, 
    [this._type, this._channel,
      this._line, this._charPos, this._text]);

  String get text => this._text;
  
  void set text(String text) {
    this._text = text;
  }
  int get type => this._type;
  
  void set type(int ttype) {
    this._type = ttype;
  }
  
  int get line => this._line;
  
  void set line(int line) {
    this._line = line;
  }
   
  int get charPositionInLine => this._charPos;
   
  void set charPositionInLine(int pos) {
    this._charPos = pos;
  }
  
  int get channel => this._channel;
  
  void set channel(int channel) {
    this._channel = channel;
  }
  
  int get tokenIndex =>  this._index;
  
  void set tokenIndex(int index) {
    this._index = index;
  }
  
  CharStream get inputStream => null;
  
  void set inputStream(CharStream input) {}
  
  String toString() {
    String channelStr = "";
    if(this._channel != Token.DEFAULT_CHANNEL)
      channelStr=",channel=$channel";
    return "[${this._text}<${this._type}>$channelStr,"
        "${this._line}:${this.charPositionInLine},@${this._index}]";
  }
  
  int hashCode() => this._type + this._line + this._charPos;
}

class ProxyTree extends BaseTree {
  int ID;
  int _type;
  int line = 0;
  int charPos = -1;
  int tokenIndex = -1;
  String _text;
  
  ProxyTree(this.ID, [this._type, this.line = 0, 
      this.charPos = -1, this.tokenIndex = -1, this._text]);

  int get tokenStartIndex => this.tokenIndex;
  void set tokenStartIndex(int index) {}
  int get tokenStopIndex => 0;
  void set tokenStopIndex(int index) {}
  Tree dupNode() {return null;}
  int get type => this._type;
  String get text => this._text;
  String toString() {return "fix this";}
}



