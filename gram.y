/*
	Name: Yash Patel 	
	Student #100943654	

	Built on top of the template provided on cuLearn and assignment0
 */
 
%{
#include <stdio.h>
#include <math.h>
%}

%token <aNumber>	NUMBER LOG EXP NEXTLINE
%type <aNumber>		S E T F X

%right '^'

%union {
	double aNumber;
}

%%
S	:
	{$$ = 0;}
	| S E NEXTLINE 
	{ printf("The result is: %f\n", $2); 
	  $$ = 0;
	} 
	;

E	:E '+' T
	{$$ = $1+$3;}

	|T
	{$$ = $1;}
	;

T   	:T '*' X
	{$$ = $1*$3;}

	|X
	{ $$ = $1;}
	;

F   	:'(' E ')'
	{$$ = $2;}

	|NUMBER
	{$$ = $1;}
	;

X 	:X '^' X
	{ $$ = pow ($1,$3);} 	//from the math.h library

	|EXP '(' F ')'
	{$$ = exp ($3);}	//from the math.h library

	|LOG '(' F ')'
	{$$ = log10 ($3); }	//from the math.h library

	|F
	{$$ = $1;}
	;
%%
yyerror( char * s ){ fprintf( stderr, "%s\n", s );}
