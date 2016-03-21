# SimpleExpressionAnalyser
A simple expression analyser using Flex and Yacc

Instructions:
	Enter the following commands in terminal to compile:

		bison -dt -o gram.c gram.y
		flex -t scan.l > scan.c
		cc -c -o gram.o gram.c
		cc -c -o scan.o scan.c
		cc -c -o main.o main.c
		cc -o assign main.o gram.o scan.o -lm

	Enter $./assign to run the program.
