#include <stdio.h>
#include "myscanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = { "",
				 "CLASS", "INHERITS", "IF", "THEN", "ELSE", "FI",
				 "WHILE", "LOOP", "POOL", "LET", "IN",  "CASE",
				 "OF", "ESAC", "NEW", "TRUE", "FALSE", "ID",
				 "TYPE", "INTEGER", "STRING", "SELF", "SELF_TYPE",
				 "LEFT_PARENTHESIS", "RIGHT_PARENTHESIS", "SEMI_COLON", "PLUS", "MINUS", "TIMES",
				 "OVER", "ASSIGN", "LESS_THAN", "LESS_EQUAL", "EQUAL", "TILDE", "NOT",
				 "ISVOID", "SINGLE_COMMENT", "MULTI_COMMENT", "LEFT_BRACKETS", 
				 "RIGHT_BRACKETS", "COLON", "DOT", "COMMA", "INVALID", "BRANCH"
				};

int main(void) 
{
	int ntoken, vtoken;

	ntoken = yylex();
	while(ntoken) {
		printf("VALUE: %s\nTYPE: %s\n\n", yytext, names[ntoken]);
		ntoken = yylex();
	}

	return 0;
}
