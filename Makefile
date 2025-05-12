all: parser

parser: lexer.o parser.o
	$(CC) -o parser lexer.o parser.o

lexer.o: lexer.c
	$(CC) -c lexer.c

parser.o: parser.c
	$(CC) -c parser.c

lexer.c: lexer.l
	flex -o lexer.c lexer.l

parser.c: parser.y
	bison -d -o parser.c parser.y

clean:
	rm -f parser lexer.c parser.c parser.h *.o
