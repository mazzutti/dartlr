grammar t026actions;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

@members {
List xlog;
String foobar;
}

@lexer::members {
List xlog;
String foobar;
}

@lexer::init {
this.xlog = new List();
this.foobar = "attribute;";
}

prog
@init {
this.xlog = new List();
this.xlog.add("init;");
}
@after {
this.xlog.add("after;");
}
    :   IDENTIFIER EOF
    ;
    
    catch [ exc ] {
        this.xlog.add("catch;");
        throw new Exception();       
    }
    finally {
        this.xlog.add("finally;");
    }


IDENTIFIER
    : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
        {
          // a comment
          this.xlog.add("action;");
          StringBuffer sb = new StringBuffer();
          List temp = [$text, $type, $line, $pos, $index, $channel, $start, $stop];
          sb.add(temp[0]);
          for(int i = 1; i < temp.length; i++){
             sb.add(" ");
             sb.add(temp[i]);
          }
          this.xlog.add(sb.toString());                    
          if (true)
              this.xlog.add(this.foobar);
        }
    ;

WS: (' ' | '\n')+;
