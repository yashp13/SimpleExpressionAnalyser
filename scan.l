/*
	Name: Yash Patel
	Student #100943654
 	
	Built on top of the template provided on cuLearn and assignment0
 */
%{ /* -*- c -*- */
#include <stdio.h>
#include "gram.tab.h"
#undef yywrap
int yywrap();
%}
extern YYSTYPE yylval;
%%
[0-9]+[.]?[0-9]* {
			yylval.aNumber = atof((char *)&yytext[0]);
			return NUMBER;
		 }

.	return *yytext;
"log" 	return LOG;
"exp" 	return EXP;
\n	return NEXTLINE;
%%
int yywrap(){return 1;}
