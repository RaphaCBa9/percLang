%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();

%}

%union {
    int num;
}

%token <num> NUM
%token TEMPO LOOP D E PAUSA
%token PARADIDDLE FLAM DOUBLESTROKE SINGLESTROKE DRAG ROLL
%token LBRACE RBRACE

%%

programa:
    tempo bloco
    ;

tempo:
    TEMPO NUM LBRACE bloco RBRACE
    {
        printf("%dbpm: ", $2);
    }
    ;

bloco:
    /* vazio */
    |
    bloco comando
    ;

comando:
    D         { printf("| D "); }
    | E       { printf("| E "); }
    | PAUSA   { printf("| pausa "); }
    | rudimento
    | LOOP NUM LBRACE bloco RBRACE
        {
            for (int i = 0; i < $2; ++i) {
                printf("| ");
            }
        }
    ;

rudimento:
    PARADIDDLE    { printf("| D E D D E D E E "); }
    | FLAM        { printf("| D "); }
    | DOUBLESTROKE { printf("| D D E E "); }
    | SINGLESTROKE { printf("| D E D E "); }
    | DRAG        { printf("| D E D "); }
    | ROLL        { printf("| D D D D E E E E "); }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro: %s\n", s);
}

int main() {
    yyparse();
    printf("|\n");
    return 0;
}
