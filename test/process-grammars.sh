#!/bin/bash
#
# processes the test lexers and grammers and generates
# the required .dart and .tokens files. If No grammar name is passed
# processes all grammars in grammars directory.
#

if [ $1 ]; then
  GRAMMARS=$@
else
  GRAMMARS=`ls grammars/*.g` 
fi

for grammar in $GRAMMARS
do
  if [ "$grammar" == "grammars/t044trace.g" ] || [ "$grammar" == "grammars/t047treeparserWalker.g" ]; then
    echo "processing '$grammar' - with tracing enabled ..."
    java org.antlr.Tool -fo out -trace $grammar
  elif [ `echo "$grammar" | grep -c t059` -ne 0 ]; then
    echo "processing '$grammar' - with debugging enabled ..."
    java org.antlr.Tool -fo out -debug $grammar
  else 
    echo "processing '$grammar' ..."
    java org.antlr.Tool -fo out $grammar
  fi
done


