%{
#include "myscanner.h"
%}
%option nounput yylineno

%%
"in" 									return IN;
"class" 								return CLASS;
"<-"									return ASSIGN;
"else" 									return ELSE;
"fi" 									return FI;
"if" 									return IF;
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
"-" 								    return MINUS;
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
"(" 									return LEFT_PARENTHESIS;
")"										return RIGHT_PARENTHESIS;
"=>"									return BRANCH;
\"[^"\n]*["\n]							return STRING;
[0-9]+									return INTEGER;
[a-z][a-zA-Z0-9_]*						return ID;
[A-Z][a-zA-Z0-9_]*						return TYPE;
[ \t\n]+
.					printf("unexpected character\n");

%%

int yywrap(void)
{
	return 1;
}

