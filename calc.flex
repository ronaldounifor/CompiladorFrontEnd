import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup

WHITESPACE = [ \t\n\r]+
DIGIT = [0-9]+

%%

<YYINITIAL> {
    {WHITESPACE}  { /**/ }
    ";"           { return new Symbol(sym.SEMI); }
    "+"           { return new Symbol(sym.PLUS); }
    "-"           { return new Symbol(sym.MINUS); }
    "*"           { return new Symbol(sym.TIMES); }
    "("           { return new Symbol(sym.LPAREN); }
    ")"           { return new Symbol(sym.RPAREN); }
    "/"           { return new Symbol(sym.DIVISION); }
    {DIGIT}       { return new Symbol(sym.NUMBER, Double.parseDouble(yytext())); }
    .             { System.err.println("Illegal character: " + yytext()); }
}