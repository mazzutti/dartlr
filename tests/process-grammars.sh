#!/bin/sh
#
# processes the test lexers and grammers and generates
# the required .dart and .tokens files
#
java org.antlr.Tool -o out -fo out grammars/*.g
