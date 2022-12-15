myscanner:
	lex myscanner.l
	gcc myscanner.c lex.yy.c -ll -o myscanner 

clean:
	rm myscanner
	rm lex.yy.c
