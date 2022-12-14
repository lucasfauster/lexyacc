#include <stdio.h>
#include "myscanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL, "ID"};

int main(void) 
{

	int ntoken, vtoken;

	ntoken = yylex();
	while(ntoken) {
		printf("TYPE: %d\n VALUE: %s\n", ntoken, yytext);
		ntoken = yylex();
	}
	return 0;
}
