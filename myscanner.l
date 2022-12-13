%{
#include "myscanner.h"
%}
%option nounput yylineno

%%
[a-z]*								    return ID;
[A-Z]*									return TYPE;
"<-"									return ASSIGN;

"class" { return CLASS; }
"else" { return ELSE; }
"fi" { return FI; }
"if" { return IF; }
"in" { return IN; }
"inherits" { return INHERITS; }
"isvoid" { return ISVOID; }
"let" { return LET; }
"loop" { return LOOP; }
"pool" { return POOL; }
"then" { return THEN; }
"while" { return WHILE; }
"case" { return CASE; }
"esac" { return ESAC; }
"new" { return NEW; }
"of" { return OF; }
"not" { return NOT; }

"+" { return ADD; }
"-" { return SUB; }
"*" { return MULT; }
"/" { return DIV; }
"=" { return ASSIGN; }
"<" { return LT; }
"<=" { return LTE; }
"." { return DOT; }
"~" { return TILDE; }
":" { return COLON; }
"," { return COMMA; }
";" { return SEMI; }
"{" { return LBRACE; }
"}" { return RBRACE; }
"(" { return LPAREN; }
")" { return RPAREN; }

[ \t\n]+
.					printf("unexpected character\n");

%%

int yywrap(void)
{
	return 1;
}

