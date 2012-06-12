**ANTLR 3 runtime for Dart**
  <br>by Tiago Mazzutti (tiagomzt@gmail.com)  
  [https://github.com/tiagomazzutti/dartlr](https://github.com/tiagomazzutti/dartlr)	

# DESCRIPTION

Fully-featured ANTLR 3 parser generation for Dart.

ANTLR (ANother Tool for Language Recognition) is a tool that is used to generate
code for performing a variety of language recognition tasks: lexing, parsing,
abstract syntax tree construction and manipulation, tree structure recognition,
and input translation. The tool operates similarly to other parser generators,
taking in a grammar specification written in the special ANTLR metalanguage and
producing source code that implements the recognition functionality.

While the tool itself is implemented in Java, it has an extensible design that
allows for code generation in other programming languages. To implement an
ANTLR language target, a developer may supply a set of templates written in the
StringTemplate ([http://www.stringtemplate.org](http://www.stringtemplate.org)) language.

This dart lib is a complete implementation of the majority of features
ANTLR provides for other language targets, such as Java and Python. It contains:

* An extended version of the latest ANTLR program, bundling all necessary
  Java code and templates for producing fully featured language recognition
  in Dart code

* A dart runtime library that collects classes used throughout the code that
  ANTLR generates
   
* An antlr3 and an antlrworks jars, used to create the grammars and to generate
  code for performing a variety of language recognition tasks: lexing, parsing,
  abstract syntax tree construction and manipulation, tree structure recognition,
  and input translation.

# STRUCTURE

TODO

# HOW TO BUILD

TODO

# USAGE

1. Write an ANTLR grammar specification for a language

   ```
   grammar SomeLanguage;
   
   options {
     language = Dart;    // <- this option must be set to Dart
     output   = AST;
   }
   
   top: expr ( ',' expr )*
     ;
    
   and so on...
   ```

2. Run the ANTLR tool with the `java -jar path/to/antlr3.jar` command to 
   generate output:
   
   ```
   java -jar path/to/antlr3.jar SomeLanguage.g
   # creates:
   #   SomeLanguageParser.dart
   #   SomeLanguageLexer.dart
   #   SomeLanguage.tokens
   ```

   NOTES: Probably you will need to edit the `#import` directive in the 
	  lexer and parser generated to reflect your local path.
	 
	  More samples can be found in the tests folder.

3. Try out the results directly:

 ```dart
 #import("path/to/DartLRLib.dart");

  main() {
  
    var lexer = new SomeLanguageLexer(charStream);
    var tokens = new CommonTokenStream(lexer);
    var parser = new SomeLanguageParser(tokens);
  
    var result = parser.<entry_rule>();
    
    ...
    
  }
  ```

# REPORTING BUGS

Please send bug reports to the <br>
[https://github.com/tiagomazzutti/dartlr/issues/new](https://github.com/tiagomazzutti/dartlr/issues/new) or
tiagomzt@gmail.com.  Direct e-mail is preferable.

# LICENSE

This license applies to all parts of ANTLR Dart backend that are not 
externally maintained libraries. 

Copyright 2012, the ANTLR Dart backend project authors. All rights 
reserved. Redistribution and use in source and binary forms, with or 
without modification, are permitted provided that the following 
conditions are met:

  * Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above
    copyright notice, this list of conditions and the following
    disclaimer in the documentation and/or other materials provided
    with the distribution.
  * Neither the name of Google Inc. nor the names of its
    contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
