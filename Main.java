import java.io.InputStreamReader;

import java_cup.runtime.Symbol;

public class Main {
  public static void main(String[] args) throws Exception {
    Yylex lexer = new Yylex(new InputStreamReader(System.in));
    parser p = new parser(lexer);
    Symbol parseResult = p.parse();
    System.out.println("Parse result: " + parseResult);
  }
}
