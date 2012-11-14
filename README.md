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
In order to use dartlr you have to create a custom antlr3 build. In contrast to
other languages code generation for Dart isn't part of the standard antlr3 code
repository yet.

## Get stringtemplate4 
  * Download the jar file for stringtemplate4

  ```
  wget http://www.stringtemplate.org/download/ST-4.0.6.jar
  ```

  * Add it to the classpath, i.e. add the following line to your .bashrc

  ```
  # replace /path/to with the local path where you put ST-{x,y,y}.jar
  export CLASSPATH=/path/to/ST-4.0.6.jar:$CLASSPATH
  ```

## Get antlr3 and build it 
  * Clone it from github

  ``` 
  git clone git://github.com/antlr/antlr3.git
  ```

  * Prepare build environment 

  Build relies on maven. If not installed yet, you have to install it first. On Ubuntu do
  ```
  sudo apt-get install maven
  ```

  * Build antlr

  ```
  cd antlr 
  mvn -N install
  mvn -Dmaven.test.skip=true
  ```
  If the third step fails, run it again. 

## Create symbolic links to the files supplied by dartlr

   ```
   cd antlr3

   # /path/to/dartlr is the full path to your local dartlr repository 
   ln -s /path/to/dartlr/antlr-templates tool/target/classes/org/antlr/codegen/templates/Dart  
   ln -s /path/to/dartlr/antlr-codegen/DartTarget.java tool/src/main/java/org/antlr/codegen/DartTarget.java
   ```

## Build again

   ```
   mvn -Dmaven.test.skip=true
   ```    

This should create the file tool/target/antlr-3.4.1-SNAPSHOT.jar which includes support for
Dart code generation.

## Test it
  * Create a trivial grammar in the file trivial.g

  ```
  lexer grammar trivial;
  options {
    language = Dart;
  }
  ZERO: '0';
  ```
  
  * Run antlr

Make sure that the antlr jar you've built in the previous steps is on the classpath.
 
```
java org.antlr.Tool trivial.g
```
This should create the files trivial.dart and trivial.tokens.

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
	 
3. Make sure your pubspec.yaml includes a dependency to 'dartlr'

   ```
   dependencies:
   	 dartlr:
   	   # temporary url. This is going to change as soon tiagomzt
   	   # has integrated the latest updates in his repository 
   	   git: git@github.com:Gubaer/dartlr.git 	 
   ```	 

4. Try out the results directly:

 ```dart
 import "package:dartlr/dartlr.dart";
 import "SomeLanguageLexer.dart";
 import "SomeLanguageParser.dart";

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
  * Neither the name of ANTLR Dart backend team. nor the names of its
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
