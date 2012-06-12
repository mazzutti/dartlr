grammar t024finally;

options {
language=Dart;
}

prog returns [List events]
@init {events = new List();}
@after {events.add('after');}
    :   ID {throw new Exception("quux");}
    ;
    catch [var e] {events.add('catch');}
    finally {events.add('finally');}

ID  :   ('a'..'z')+
    ;

WS  :   (' '|'\n'|'\r')+ {$channel=HIDDEN;}
    ;
