import java_cup.runtime.*;
%%
%cup
digito = [0-9]
letra = [A-Za-z]
ident = {letra} ({letra}|{digito})*
inteiro = 0 | [1-9][0-9]*
%%
{ident} { return new Symbol(sym.IDENT, yytext()); }
{inteiro} {
    int aux = Integer.parseInt(yytext());
    return new Symbol(sym.INTEIRO, yyline, yycolumn, new Integer(aux));
}
"+" { return new Symbol(sym.MAIS);}
"-" { return new Symbol(sym.MENOS);}
";" { return new Symbol(sym.PV);}
.|\n {
    return new Symbol(sym.EOF, yyline, yycolumn, yytext());
}