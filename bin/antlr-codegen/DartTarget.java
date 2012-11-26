/*
 * [The "BSD license"] Copyright (c) 2010 Terence Parr Copyright (c) 2012 Tiago Mazzutti All rights
 * reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are permitted
 * provided that the following conditions are met: 1. Redistributions of source code must retain the
 * above copyright notice, this list of conditions and the following disclaimer. 2. Redistributions
 * in binary form must reproduce the above copyright notice, this list of conditions and the
 * following disclaimer in the documentation and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products derived from this
 * software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package org.antlr.codegen;

import org.antlr.Tool;
import org.antlr.analysis.DFA;
import org.antlr.analysis.Label;
import org.antlr.tool.Grammar;
import org.stringtemplate.v4.ST;
import org.stringtemplate.v4.ST.AttributeList;
import org.stringtemplate.v4.misc.Aggregate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

public class DartTarget extends Target {

  /**
   * just for debugging and analysting ST trees
   */
  static class STDumper {
    private final ST st;

    public STDumper(ST st) {
      this.st = st;
    }

    public void dump() {
      dump(0, st);
    }

    protected void dump(int level, Aggregate aggregate) {
      if (aggregate.properties == null)
        return;
      for (String key : aggregate.properties.keySet()) {
        Object value = aggregate.get(key);
        if (value instanceof ST) {
          log(level, String.format("aggregate key: %s", key));
          dump(level + 1, (ST) value);
        } else if (value instanceof AttributeList) {
          log(level, String.format("aggregate key: %s", key));
          dump(level + 1, (AttributeList) value);
        } else {
          log(level,
              String.format("aggregate key: %s, type: %s, value: %s", key, value.getClass(), value));
        }
      }
    }

    protected void dump(int level, AttributeList<?> l) {
      for (int i = 0; i < l.size(); i++) {
        Object attr = l.get(i);
        if (attr == null)
          continue;
        String name = String.format("AttributeList[%s]", i);
        if (attr instanceof String) {
          log(level + 1, String.format("attr %s: type: %s, value: %s", name, String.class, attr));
        } else if (attr instanceof ST) {
          dump(level + 1, (ST) attr);
        } else if (attr instanceof AttributeList) {
          dump(level + 1, (AttributeList<?>) attr);
        } else if (attr instanceof Aggregate) {
          dump(level + 1, (Aggregate) attr);
        } else {
          log(level + 1,
              String.format("attr %s: type: %s, value: %s", name, attr.getClass(), attr.toString()));
        }

      }
    }

    protected void dump(int level, ST st) {
      log(level, String.format("ST: name=%s", st.getName()));
      Map<String, Object> atts = st.getAttributes();
      if (atts == null)
        return;
      for (String key : atts.keySet()) {
        Object attr = st.getAttribute(key);
        if (attr == null)
          continue;
        if (attr instanceof String) {
          log(level + 1,
              String.format("attr: name:%s, type: %s, value: %s", key, String.class, attr));
        } else if (attr instanceof ST) {
          dump(level + 1, (ST) attr);
        } else if (attr instanceof AttributeList) {
          log(level + 1, String.format("attr: name: %s -> AttributeList", key));
          dump(level + 1, (AttributeList<?>) attr);
        } else if (attr instanceof Aggregate) {
          log(level + 1, String.format("attr: name: %s -> Aggregate", key));
          dump(level + 1, (Aggregate) attr);
        } else {
          log(level + 1,
              String.format("attr: name:%s, type: %s, value: %s", key, attr.getClass(),
                  attr.toString()));
        }
      }
    }

    private void ident(int level) {
      for (int i = 0; i < level; i++)
        System.out.print("  ");
    }

    private void log(int level, String msg) {
      ident(level);
      System.out.println(msg);
    }
  }

  /**
   * Rewrites the attribute 'pred' for any ST with name '/evalPredicate'. The template is used in
   * special state STs of DFAs. The attribute value is a guard expression in target language. This
   * rewriter extracts the literal expression, creates a specific getter in the lexer and and
   * replaces the literal expression with a getter invocation.
   */
  private static class EvalPredicateRewriter implements STVisitor {

    static List<String> apply(List<ST> l) {
      EvalPredicateRewriter rewriter = new EvalPredicateRewriter();
      STWalker walker = new STWalker(rewriter);
      walker.walk(l);
      return rewriter.getters;
    }

    /**
     * Apply the rewriter to a template
     * 
     * @param st the template
     * @return the list of generated getters
     */
    static List<String> apply(ST st) {
      EvalPredicateRewriter rewriter = new EvalPredicateRewriter();
      STWalker walker = new STWalker(rewriter);
      walker.walk(st);
      return rewriter.getters;
    }

    List<String> getters = new ArrayList<String>();
    Set<ST> visited = new HashSet<ST>();

    @Override
    public void visit(ST st) {
      if (st == null)
        return;
      if (!"/evalPredicate".equals(st.getName()))
        return;
      if (visited.contains(st))
        return;
      visited.add(st);
      List<?> preds = convert(st.getAttribute("pred"), List.class);
      if (preds == null)
        return;
      List<String> newPreds = new ArrayList<String>();
      for (Object o : preds) {
        if (o == null || !(o instanceof String))
          continue;
        String pred = (String) o;
        String getterName = "evalPredicate_" + newGid();
        getters.add(String.format("get %s => (%s);", getterName, pred));
        newPreds.add(String.format("(recognizer.%s)", getterName));
      }
      if (!newPreds.isEmpty()) {
        st.remove("pred");
        st.add("pred", newPreds);
      }
    }
  }

  /**
   * Rewrites literal expression in all ST attributes with name 'predicates'. Extracts the
   * expression in a named getter and replaces it with the getter invocation.
   * <p>
   * This rewritter is applied to the special state STs of each DFA.
   */
  private static class PredicatesAttrRewriter implements STVisitor {

    static List<String> apply(List<ST> l) {
      PredicatesAttrRewriter rewriter = new PredicatesAttrRewriter();
      new STWalker(rewriter).walk(l);
      return rewriter.getters;
    }

    /**
     * Apply the rewriter to a template
     * 
     * @param st the template
     * @return the list of generated getters
     */
    static List<String> apply(ST st) {
      PredicatesAttrRewriter rewriter = new PredicatesAttrRewriter();
      new STWalker(rewriter).walk(st);
      return rewriter.getters;
    }

    private final List<String> getters = new ArrayList<String>();
    private final Set<ST> visited = new HashSet<ST>();

    @Override
    public void visit(ST st) {
      if (st == null)
        return;
      String predicates = convert(st.getAttribute("predicates"), String.class);
      if (predicates == null)
        return;
      if (visited.contains(st))
        return;
      visited.add(st);
      String getterName = "evalPredicate_" + newGid();
      getters.add(String.format("get %s => (%s);", getterName, predicates));
      st.remove("predicates");
      st.add("predicates", String.format("(recognizer.%s)", getterName));
    }
  }

  private static interface STVisitor {
    void visit(ST st);
  }

  private static class STWalker {
    private final STVisitor visitor;

    public STWalker(STVisitor visitor) {
      this.visitor = visitor;
    }

    public void walk(List<ST> l) {
      if (l == null)
        return;
      for (ST st : l)
        walk(st);
    }

    public void walk(ST st) {
      visitor.visit(st);
      if (st.getAttributes() == null)
        return;
      for (String key : st.getAttributes().keySet())
        dispatch(st.getAttribute(key));
    }

    protected void dispatch(Object v) {
      if (v == null)
        return;
      if (v instanceof ST) {
        walk((ST) v);
      } else if (v instanceof AttributeList) {
        walk((AttributeList<?>) v);
      } else if (v instanceof Aggregate) {
        walk((Aggregate) v);
      }
    }

    protected void walk(Aggregate a) {
      for (Object v : a.properties.values())
        dispatch(v);
    }

    protected void walk(AttributeList<?> l) {
      for (Object v : l)
        dispatch(v);
    }
  }

  static private int gid = 0;
  private static List<String> header = null;

  static private <T> T convert(Object obj, Class<T> cls) {
    if (obj == null)
      return null;
    if (!cls.isInstance(obj))
      return null;
    return cls.cast(obj);
  }

  static private int newGid() {
    gid++;
    return gid;
  }

  @Override
  public String encodeIntAsCharEscape(int v) {
    String hex = Integer.toHexString(v | 0x10000).substring(1, 5);
    return "\\u" + hex;
  }

  @Override
  public String getTargetCharLiteralFromANTLRCharLiteral(CodeGenerator generator, String literal) {
    StringBuffer buf = new StringBuffer();
    buf.append('\'');
    int c = Grammar.getCharValueFromGrammarCharLiteral(literal);
    if (c < Label.MIN_CHAR_VALUE)
      return "0";
    if (c < targetCharValueEscape.length && targetCharValueEscape[c] != null) {
      buf.append(targetCharValueEscape[c]);
    } else if (Character.UnicodeBlock.of((char) c) == Character.UnicodeBlock.BASIC_LATIN
        && !Character.isISOControl((char) c)) {
      // normal char
      buf.append((char) c);
    } else {
      // must be something unprintable...use \\uXXXX
// turn on the bit above max 
      // "\\uFFFF" value so that we pad with zeros
      // then only take last 4 digits
      String hex = Integer.toHexString(c | 0x10000).toUpperCase().substring(1, 5);
      buf.append("\\u");
      buf.append(hex);
    }
    buf.append('\'');
    return c + " /*" + buf.toString() + "*/";
  }

  @Override
  public String getTargetStringLiteralFromANTLRStringLiteral(CodeGenerator generator, String literal) {
    String ret = super.getTargetStringLiteralFromANTLRStringLiteral(generator, literal);
    // in Dart we have to escape '$' in order to disable expression evaluation
    // in strings 
    ret = ret.replace("$", "\\$");
    return ret;
  }

  @Override
  public String getTargetStringLiteralFromString(String s) {
    s = getTargetStringLiteralFromString(s, false);
    if (s.contains("|") && s.length() > 80)
      s = this.wrapGrammarComment(s);
    return s;
  }

  @Override
  public String getTargetStringLiteralFromString(String s, boolean quoted) {
    if (s == null)
      return null;
    StringBuffer buf = new StringBuffer();
    if (quoted)
      buf.append('"');
    for (int i = 0; i < s.length(); i++) {
      int c = s.charAt(i);
      if (c != '\'' && c < targetCharValueEscape.length && targetCharValueEscape[c] != null) {
        buf.append(targetCharValueEscape[c]);
      } else
        buf.append((char) c);

    }
    if (quoted)
      buf.append('"');
    return buf.toString();
  }

  @Override
  public String getTokenTypeAsTargetLabel(CodeGenerator generator, int ttype) {
    // use ints for predefined types;
    // <invalid> <EOR> <DOWN> <UP>
    if (ttype >= 0 && ttype <= 3)
      return String.valueOf(ttype);
    String name = generator.grammar.getTokenDisplayName(ttype);
    // If name is a literal, return the token type instead
    if (name.charAt(0) == '\'')
      return String.valueOf(ttype);
    return name;
  }

  @Override
  protected void genRecognizerFile(Tool tool, CodeGenerator generator, Grammar grammar,
      ST outputFileST) throws IOException {
    List<String> getters = new ArrayList<String>();

    for (DFA dfa : getDfas(outputFileST)) {
      getters.addAll(PredicatesAttrRewriter.apply(dfa.specialStateSTs));
      getters.addAll(EvalPredicateRewriter.apply(dfa.specialStateSTs));
    }
    if (!getters.isEmpty()) {
      outputFileST.add("lexerEvalPredicates", getters);
    }
    this.adjustHeader(outputFileST, grammar);
    super.genRecognizerFile(tool, generator, grammar, outputFileST);
  }

  /**
   * Replies the list of DFAs in the attribute {@code cyclicDFAs}.
   * 
   * @param out outputFileST the root ST
   * @return returns the list of DFAs
   */
  protected List<DFA> getDfas(ST outputFileST) {
    List<DFA> ret = new ArrayList<DFA>();
    DFA value = convert(outputFileST.getAttribute("cyclicDFAs"), DFA.class);
    if (value != null) {
      ret.add(value);
      return ret;
    }
    List<?> dfas = convert(outputFileST.getAttribute("cyclicDFAs"), List.class);
    if (dfas != null) {
      for (Object o : dfas) {
        if (o == null || !(o instanceof DFA))
          continue;
        ret.add((DFA) o);
      }
      return ret;
    }
    return ret;
  }

  @SuppressWarnings({"rawtypes", "unchecked"})
  private void adjustHeader(ST outputFileST, Grammar grammar) {
    if (grammar.type == 4) {
      HashMap _header = (HashMap) ((HashMap) outputFileST.getAttribute("actions")).get("parser");
      header = (List) _header.get("header");
    } else if (grammar.type == 1 && header != null) {
      HashMap actions = (HashMap) outputFileST.getAttribute("actions");
      outputFileST.remove("actions");
      ((HashMap) actions.get("lexer")).put("header", header);
      outputFileST.add("actions", actions);
      outputFileST.remove("actionScope");
      outputFileST.add("actionScope", "lexer");
    }
  }

  private String wrapGrammarComment(String s) {
    Pattern p = Pattern.compile("(\\s\\|\\s)+");
    String[] splitedS = p.split(s);
    String t1 = "", t2 = "";
    for (int i = 0; i < splitedS.length; i++) {
      t1 += splitedS[i] + " | ";
      if (t1.length() > 60) {
        t2 += t1 + "\n";
        t1 = "";
      }
    }
    if (t1.length() > 0)
      t2 += t1.substring(0, t1.length() - 3);
    else
      t2 = t2.substring(0, t2.length() - 3);
    return t2;
  }

}
