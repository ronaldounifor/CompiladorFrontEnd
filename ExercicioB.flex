%%

%class Yylex
%unicode
%cup
%line
%column

%{
  import java_cup.runtime.Symbol;
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
%}

%%

[ \t\n\r]+             { /* ignore whitespace */ }
"if"                   { return symbol(sym.IF); }
"else"                 { return symbol(sym.ELSE); }
"while"                { return symbol(sym.WHILE); }
"return"               { return symbol(sym.RETURN); }
"int"                  { return symbol(sym.INT); }
"double"               { return symbol(sym.DOUBLE); }
"void"                 { return symbol(sym.VOID); }
[0-9]+                 { return symbol(sym.INTEGER, Integer.parseInt(yytext())); }
[0-9]+"."[0-9]+        { return symbol(sym.DOUBLE, Double.parseDouble(yytext())); }
[a-zA-Z_][a-zA-Z_0-9]* { return symbol(sym.IDENTIFIER, yytext()); }
"=="                   { return symbol(sym.EQ); }
"!="                   { return symbol(sym.NEQ); }
"<"                    { return symbol(sym.LT); }
">"                    { return symbol(sym.GT); }
"<="                   { return symbol(sym.LTE); }
">="                   { return symbol(sym.GTE); }
"+"                    { return symbol(sym.PLUS); }
"-"                    { return symbol(sym.MINUS); }
"*"                    { return symbol(sym.TIMES); }
"/"                    { return symbol(sym.DIVIDE); }
"="                    { return symbol(sym.ASSIGN); }
";"                    { return symbol(sym.SEMICOLON); }
","                    { return symbol(sym.COMMA); }
"("                    { return symbol(sym.LPAREN); }
")"                    { return symbol(sym.RPAREN); }
"{"                    { return symbol(sym.LBRACE); }
"}"                    { return symbol(sym.RBRACE); }
\"([^\\\"]|\\.)*\"     { return symbol(sym.LITERAL, yytext()); }