/*
 * [The "BSD license"]
 *  Copyright (c) 2010 Terence Parr
 *  Copyright (c) 2012 Tiago Mazzutti
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *  1. Redistributions of source code must retain the above copyright
 *      notice, this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *      notice, this list of conditions and the following disclaimer in the
 *      documentation and/or other materials provided with the distribution.
 *  3. The name of the author may not be used to endorse or promote products
 *      derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 *  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 *  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package org.antlr.codegen;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.antlr.Tool;
import org.antlr.analysis.DFA;
import org.antlr.analysis.Label;
import org.antlr.tool.Grammar;
import org.stringtemplate.v4.ST;
import org.stringtemplate.v4.ST.AttributeList;

public class DartTarget extends Target {
	
	protected void genRecognizerFile(Tool tool,
			 CodeGenerator generator,
			 Grammar grammar,
			 ST outputFileST) throws IOException {
		//TODO change this as soon Dart supports inner classes
		this.adjustCiclicDFAOutput(outputFileST, grammar);
		super.genRecognizerFile(tool, generator, grammar, outputFileST);		
	}
	
//***** TODO change this as soon Dart supports inner classes*******************
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private void adjustCiclicDFAOutput(ST outputFileST, Grammar grammar) {	
		Object object = outputFileST.getAttribute("cyclicDFAs");
		List dfaList;
		if(object instanceof DFA) {
			dfaList = new ArrayList();
			dfaList.add(object);
		} else
			dfaList = (AttributeList) outputFileST.getAttribute("cyclicDFAs");
		if(dfaList != null)
			for(Object obj : dfaList)
				this.adjustcyclicDFA((DFA) obj);
	}
	
	@SuppressWarnings({ "rawtypes"})
	private void adjustcyclicDFA(DFA dfa) {
		ST next;
		if(dfa != null) {
			Iterator it = dfa.specialStateSTs.iterator();					
			while(it.hasNext()) {
				next = (ST) it.next();						
				List al =  (List) next.getAttribute("edges");						
				if(al != null)
					for(int i = 0; i < al.size(); i++) {
						this.adjustePred(
						  (ST)((ST)al.get(i)).getAttribute("labelExpr"));								
						this.replacePredicates((ST) al.get(i));
						
					}
			}
		} 
	}
	
	
	private void replacePredicates(ST st) {
		Object predicates = st.getAttribute("predicates");
		if(predicates instanceof String) {									
			st.remove("predicates");
			predicates = ((String) predicates).replaceFirst("this.", "");
			if(((String) predicates).charAt(0) == '!')
				predicates = "!this.recognizer." + 
			                          ((String) predicates).substring(1);
			else
				predicates  = "this.recognizer." + predicates;
			st.add("predicates", predicates);
		}
	}
	
	@SuppressWarnings({ "rawtypes"})
	private void adjustePred(ST st) {
		List preds;
		this.adjustLeftRigthEvalPred((ST) st.getAttribute("left"));
		this.adjustLeftRigthEvalPred((ST) st.getAttribute("right"));
		if(st != null) {
			preds = (List) st.getAttribute("pred");									
			if(preds != null)
				this.replacePred(preds, st);			
		}
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private void replacePred(List preds, ST st) {
		List newPreds = new ArrayList(); 
		if(preds != null) {					
			for(Object p : preds) {
				String str = p.toString();
				str = str.replaceFirst("this.", "");
				if(str.charAt(0) == '!')
					newPreds.add("!this.recognizer." 
				                               + str.substring(1));
				else
					newPreds.add("this.recognizer." + str);										
			}					
			st.remove("pred");
			st.add("pred", newPreds);
		}
	}

	@SuppressWarnings({ "rawtypes"})
	private void adjustLeftRigthEvalPred(ST st) {
		if(st != null) {
			if(st.getAttributes().containsKey("left") 
					      && (st.getAttributes().containsKey("right")))  {
				this.adjustLeftRigthEvalPred((ST) st.getAttribute("left"));
				this.adjustLeftRigthEvalPred((ST) st.getAttribute("right"));
			} else if(st.getAttributes().containsKey("right"))
				this.adjustLeftRigthEvalPred((ST) st.getAttribute("right"));
			else if(st.getAttributes().containsKey("left"))
				this.adjustLeftRigthEvalPred((ST) st.getAttribute("left"));			
			else 
				this.replacePred((List) st.getAttribute("pred"), st);			
		}
	}
//*****************************************************************************
	

	@Override
	public String encodeIntAsCharEscape(int v) {
        String hex = Integer.toHexString(v|0x10000).substring(1,5);
        return "\\u"+hex;
    }
	

	public String getTargetCharLiteralFromANTLRCharLiteral
					(CodeGenerator generator, String literal) {
		StringBuffer buf = new StringBuffer();
		buf.append('\'');
		int c = Grammar.getCharValueFromGrammarCharLiteral(literal);
		if(c < Label.MIN_CHAR_VALUE)
			return "0";
		if(c < targetCharValueEscape.length &&
			        targetCharValueEscape[c]!=null ) {
			buf.append(targetCharValueEscape[c]);
		} else if(Character.UnicodeBlock.of((char)c)==
				  Character.UnicodeBlock.BASIC_LATIN &&
				        !Character.isISOControl((char)c) ) 	{
			// normal char
			buf.append((char)c);
		} else {
			// must be something unprintable...use \\uXXXX
			// turn on the bit above max 
			// "\\uFFFF" value so that we pad with zeros
			// then only take last 4 digits
			String hex = Integer
			   .toHexString(c|0x10000).toUpperCase().substring(1,5);
			buf.append("\\u");
			buf.append(hex);
		}
		buf.append('\'');
		return c + " /*" +  buf.toString() + "*/";
	}
	
    public String getTokenTypeAsTargetLabel
                           (CodeGenerator generator,  int ttype) {
		// use ints for predefined types;
		// <invalid> <EOR> <DOWN> <UP>
		if(ttype >= 0 && ttype <= 3) 
		  return String.valueOf(ttype);		
		String name = generator.grammar.getTokenDisplayName(ttype);			
		// If name is a literal, return the token type instead
		if(name.charAt(0)=='\'' ) 
			return String.valueOf(ttype);
		return name;
    }
    
    public String getTargetStringLiteralFromString
                                      (String s, boolean quoted) {
		if(s == null) return null;		
		StringBuffer buf = new StringBuffer();
		if(quoted)  buf.append('"');
		for (int i=0; i<s.length(); i++) {
			int c = s.charAt(i);
			if(c != '\'' && 
				 c < targetCharValueEscape.length &&
				         targetCharValueEscape[c]!=null ) {
				buf.append(targetCharValueEscape[c]);
			} else 
				buf.append((char)c);

		}
		if(quoted) buf.append('"');
		return buf.toString();
	}
    
    public String getTargetStringLiteralFromString(String s) {
    	s = getTargetStringLiteralFromString(s, false);
    	if(s.contains("|") && s.length() > 80)
    		s = this.wrapGrammarComment(s);  		   		
		return s;
	}
        
    private String wrapGrammarComment(String s) {    	
    	Pattern p = Pattern.compile("(\\s\\|\\s)+");
    	String[] splitedS = p.split(s);
    	String t1 = "", t2 = "";
    	for(int i = 0; i < splitedS.length; i++) {
    		t1 += splitedS[i] + " | ";
    		if(t1.length() > 60) {
    			t2 += t1 + "\n"; t1 = "";
    		}
    	}
    	if(t1.length() > 0) t2 += t1.substring(0, t1.length() - 3);
    	else t2 = t2.substring(0, t2.length() - 3);
    	return t2;
    }	
}
