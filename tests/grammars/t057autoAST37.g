grammar t057autoAST37;
options {language=Dart;output=AST;}
a returns [String result] : ids+=ID^ ids+=ID {
    StringBuffer buffer = new StringBuffer() ;
    for (int p = 0; p < $ids.length; p++)
        buffer.add("\${$ids[p].text},");        
    $result = "id list=[\${buffer.toString()}],";
} ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
