#!/bin/bash
#
# processes the test lexers and grammers and generates
# the required .dart and .tokens files
#
for grammar in `ls grammars/*.g`
do
  if [ "$grammar" == "grammars/t044trace.g" ] || [ "$grammar" == "grammars/t047treeparserWalker.g" ]; then
	echo "processing '$grammar' - with tracing enabled ..."
	java org.antlr.Tool -o out -fo out -trace $grammar
  elif [ `echo "$grammar" | grep -c t059` -ne 0 ]; then
	echo "processing '$grammar' - with debugging enabled ..."
	java org.antlr.Tool -o out -fo out -debug $grammar
  else 
	echo "processing '$grammar' ..."
	java org.antlr.Tool -o out -fo out $grammar
  fi
done

