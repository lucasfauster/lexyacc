%{
#include "myscanner.h"
%}
%option nounput yylineno

%%
[a-z]*								    return ID;
[A-Z]*									return TYPE;
"<-"									return ASSIGN;

"class" 								return CLASS;
"else" 									return ELSE;
"fi" 									return FI;
"if" 									return IF;
"in" 									return IN;
"inherits"								return INHERITS;
"isvoid"								return ISVOID;
"let" 									return LET;
"loop"									return LOOP;
"pool"									return POOL;
"then" 									return THEN;
"while"									return WHILE;
"case"									return CASE;
"esac"									return ESAC;
"new" 									return NEW;
"of"									return OF;
"not"									return NOT;

"+"										return PLUS;
"-" { return SUB; }
"*"										return TIMES;
"/"										return OVER;
"=" 									return EQUAL;
"<="									return LESS_EQUAL;
"."										return DOT;
"~"										return TILDE;
":"										return COLON;
"," 									return COMMA;
";"										return SEMI_COLON;
"{" 									return LEFT_BRACKETS;
"}"										return RIGHT_BRACKETS;
"(" { return LPAREN; }
")"										return RIGHT_PARENTHESIS;
"=>"									return BRANCH;

[ \t\n]+
.					printf("unexpected character\n");

%%

int yywrap(void)
{
	return 1;
}

