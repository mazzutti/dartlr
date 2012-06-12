// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#import("dart:io");
#import("test_runner.dart");

#source("test_config.dart");

main() {
  
  List<String> arguments = new Options().arguments;
  if(arguments.some((arg) => arg == "-compile-antlr")) {
    Function callback = (Set<String> s) {
      Process javacProccess = Process.start('javac', 
          TestConfig.javacProccessParams(s), TestConfig.javacOptions());
      StringInputStream stderrStream = 
                            new StringInputStream(javacProccess.stderr);
      String output = "";
      stderrStream.onLine = () => output = "$output${stderrStream.readLine()}";
      javacProccess.onStart = () 
                         => print("-> compiling antlr java sources...");
      javacProccess.onError = (error) {throw error;};
      javacProccess.onExit = (exitCode) {
        if(exitCode == 0) {
          print("-> sucessfuly compiled java sources!");
          generateRecognizers();
        } else {
          print("-> javac exited with code $exitCode");
          print("stderr: $output");
        }
        javacProccess.close();
      };
    };  
    javaFilePaths(TestConfig.javacWorkingDiretory().list(true), 
         ".java", TestConfig.javaSourceDirPaths, callback);
  } else 
    runFunctionalTests();
}

void javaFilePaths(DirectoryLister root, String extension, 
               List<String> dirList, callback(Set<String> s)) {
  Set<String> filePathsSet = new Set<String>();
  root.onFile = (file) {
    for(String path in dirList)
      if(file.contains(path) && file.endsWith(extension))
        filePathsSet.add(file);
  };
  root.onDone = (completed) => callback(filePathsSet);
} 

void generateRecognizers() {
  List<String> antlrProcessParams = TestConfig.antlrProcessParams();  
  ProcessOptions processOptions = TestConfig.antlrOptions();
  Map<String, List<String>> grammars = TestConfig.testGrammars;
  List<String> keys = grammars.getKeys();
  int ANTLRPROCCESSNUMBER = 0;
  for(String  key in keys) {
    List gParams = new List.from(antlrProcessParams);
    gParams.add(key);
    gParams.addAll(grammars[key]);
    print("general Params: $gParams");
    Process antlrProcess = Process.start('java', gParams, processOptions);
    StringInputStream stderrStream = new StringInputStream(antlrProcess.stderr);
    String output = "";
    int pNumber = ++ANTLRPROCCESSNUMBER;
    stderrStream.onLine = () => output = "$output${stderrStream.readLine()}\n";
    antlrProcess.onStart = () 
                 => print("-> starting antlr process number ($pNumber)");
    antlrProcess.onError = (error) {throw error;};
    antlrProcess.onExit = (exitCode) {
      if(exitCode == 0) {
        print("-> grammars sucessfuly generated for antlr process number $pNumber!");        
      }
      else {
        print("-> antlr precess number ($pNumber) exited with code $exitCode!");
        print("stderr: $output");
      }
      antlrProcess.close();      
    };
  }
  //runFunctionalTests();
 }
void runFunctionalTests() {
  print("\n-> Running dartlr tests now...\n");
  new TestRunner().run();
}
