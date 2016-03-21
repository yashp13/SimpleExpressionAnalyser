/* 	
	Taken from the Introduction to Yacc and Lex pdf provided
 */
#include <stdio.h>
#include <stdlib.h>
extern int yyerror(), yylex();

#define YYDEBUG 1
//#include "gram.tab.c"
//#include "lex.yy.c"

main()
{
	//yydebug = 1; 
	yyparse();
}
