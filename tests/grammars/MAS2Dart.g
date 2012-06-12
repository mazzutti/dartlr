grammar MAS2Dart;

options {
   language = Dart;
}

@members {
MAS2Dart project ;
}

fragment
LC_LETTER  :  'a'..'z' ;

fragment
UP_LETTER  : 'A'..'Z' ;  

fragment
DIGIT   : '0'..'9' ;

fragment
LETTER   : LC_LETTER  | UP_LETTER  ;

fragment
EXPONENT : ('e'|'E') ('+'|'-')? ('0'..'9')+ ;


NUMBER
    :  DIGIT+ '.' DIGIT* EXPONENT?
    |   '.' DIGIT+ EXPONENT?
    |   DIGIT+ EXPONENT
    |   DIGIT+
    ;

COMMENT
    :   '//' ~('\n'|'\r')* '\r'? '\n' {$channel=HIDDEN;}
    |   '/*' ( options {greedy=false;} : . )* '*/' {$channel=HIDDEN;}
    ;

WS  :   ( ' '
        | '\t'
        | '\r'
        | '\n'
        ) {$channel=HIDDEN;}
    ;

STRING
    :  '"' ( ESC_SEQ | ~('\\'|'"') )* '"'
    ;

fragment
HEX_DIGIT : ('0'..'9'|'a'..'f'|'A'..'F') ;

fragment
ESC_SEQ
    :   '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
    |   UNICODE_ESC
    |   OCTAL_ESC
    ;

fragment
OCTAL_ESC
    :   '\\' ('0'..'3') ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7')
    ;
    
fragment
UNICODE_ESC
    :   '\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;         

fragment
DRIVER: LETTER ':';

fragment
INFRA : 'infrastructure' ; 
fragment
MAS  : 'MAS' 
;
fragment
ENV  : 'environment';  

fragment
AT : 'at';  

fragment
CONTROL  : 'executionControl';

fragment
CLASSPATH: 'classpath';	

fragment
SOURCEPATH: 'aslSourcePath';

fragment
DIRECTIVE: 'directives'; 

fragment
AGS : 'agents'; 

fragment
ID :   LETTER (LETTER | DIGIT | '_' )* ;

fragment   
PATH : ( './' | '/' | '\\' | DRIVER ) ( (LETTER | DIGIT | '_')* ( '/' | '\\') ) *;

fragment
ASID  :  LC_LETTER ( LETTER | DIGIT | '_')* ;  

fragment
ASOEE:  'events';


fragment
ASOEEV:  'discard' | 'requeue' | 'retrieve';

fragment
ASOIB: 'intBels';

fragment
ASOIBV: 'sameFocus' | 'newFocus';

fragment
ASONRC: 'nrcbp';

fragment
ASOV: 'verbose';

fragment
ASOSYNC: 'synchronised';

fragment
ASOBOOL: 'true' | 'false';

fragment
ASAGARCHCLASS: 'agentArchClass';

fragment
ASAGCLASS:'agentClass';	

fragment
BBCLASS: 'beliefBaseClass';	
      
mas returns [MAS2Dart project]         
@init{ project = new MAS2Dart();} 
   : MAS  id=ASID   '{' { project.socName =$id.text; }  
         (infra)?
         (environment)?
         (control)?
         agents
         directives  
         classpath 
         sourcepath
    '}'
   ;
   
agents 
@init {project.initAgMap();}
   : AGS ':'  ( agent)+
   ;
   
  
infra 
   : INFRA ':'  inf=classDef  { project.Infrastructure = $inf.text;}
   ; 
   
procOption[Map optMap] returns [Map opts]
@after{$opts = $optMap;}
    :  opt=ASOEE  '=' oval=ASOEEV  {$optMap[$opt.text] = $oval.text;}
    | opt=ASOIB '=' oval=ASOIBV  {$optMap[$opt.text] = $oval.text;}
    | opt=ASOSYNC  '=' oval=ASOBOOL {$optMap[$opt.text] = $oval.text;}
    | opt=ASONRC  '='oval=NUMBER  {$optMap[$opt.text] = $oval.text;} 
    | opt=ASOV  '=' oval=NUMBER  {$optMap[$opt.text] = $oval.text;} 
    | opt=ASID  '='  (oval=STRING |oval=ASID | oval=NUMBER |oval=ID)  {$optMap[$opt.text] = $oval.text;}   
   ;
   
asOptions returns [Map opts]
@init { Map optMap = new HashMap(); }  
@after{$opts = optMap;}
   :  '[' procOption[optMap]  (','  procOption[optMap])* ']' 	 
   ; 
       
fileName returns [File file]            
@init{ 
String path = "";
String ext = ".asl"; 
}
@after{
   $file = new File("\${path}{\$i.text}.asl");
}
   :  (t=PATH   { path = $t.text; }) ?  i=ASID ( '.' e=ASID { ext = ". \${$e.text}"; } )?
   ; 
   
 agent
 @init{AgentParameters ag = new AgentParameters();}
 @after{project.addAgent(ag);}           
    : agName=ASID { ag.name = $agName.text;
                              ag.asSource = new File("\${$agName.text}.asl"); 
                              }                            
	  (as=fileName)?  {as.asSource = $as.text;} 
	    opts=asOptions   { ag.options(opts);} 
	  (  ASAGARCHCLASS arch=classDef  {ag.insertArchClass(arch);}
	      |  ASAGCLASS  ac=classDef  {ag.agClass = $ac.text;}
	      |  BBCLASS  bbc=classDef {ag.bbClass = $bbc.text;}
	      |   '#' qty=NUMBER   { ag.qty = Math.parseInt($qty.text);}
	      |   AT host=STRING    { ag.host($host.text);}
	  )*  ';'
    ;
 
classDef  returns [ClassParameters cp]   
@init{$cp = new ClassParameters();}
   :  (c=ID  | c=ASID)     { $cp.className = $c.text; }
       ( '.' (c=ID | c=ASID)  {$cp.className = "\${$cp.className} \${$c.text}"; } )*
        '(' s=parameter   {$cp.addParameter(s); }  ( ','  s=parameter  { $cp.addParameter(s); } )* ')' 
  ;   

classpath 
    : CLASSPATH ':'
       ( cp=STRING ';'     { project.addClassPath($cp.text); } )+
    ;  
    
sourcepath
    : SOURCEPATH ':' 
      ( cp=STRING ';'  { project.addSourcePath($cp.text); } )+
    ;
    
  
parameter returns [String s] 
   :  cdr=classDef      {s = cdr.cp.toString(); }
   | c=NUMBER     {s = $c.text; }
   | c=STRING         {s = $c.text; }
   | lp=listParameters {s = lp; }
   ;    
   
listParameters returns [String s]
@init { List l = new List(); }
@after{s = l.toString();}
    : '[' sp=parameter   { l.add(sp); }   ( ',' sp=parameter   { l.add(sp); }  )* ']'
    ;
    
    
environment  
   : ENV  ':'  envClass =classDef  (AT  host=STRING)?   
                            {                              
                              if (host  != null) {
                                   envClass.host($host.text);
	    }
	    project.envClass = envClass;
                            }
   ;   

control 
   :  CONTROL ':' controlClass=classDef  (AT host =STRING)?
                            { 
                              if ($host  != null) {
                                   controlClass.host = $host.text;
                              }
                              project.controlClass = controlClass;
                            }
    ;   
    
directives
   :   DIRECTIVE ':' 
    ( directiveId=ASID  '=' directiveClass=classDef ';'   
           { project.addDirectiveClass($directiveId.text, directiveClass);} )+
   ;     

 

