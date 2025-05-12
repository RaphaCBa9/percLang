%{
#include "parser.tab.h"
%}

%%

"tempo"         return TEMPO;
"loop"          return LOOP;
"D"              return D;
"E"              return E;
"pausa"          return PAUSA;

// Rudimentos
"paradiddle"     return PARADIDDLE;
"flam"           return FLAM;
"doubleStroke"   return DOUBLESTROKE;
"singleStroke"   return SINGLESTROKE;
"drag"           return DRAG;
"roll"           return ROLL;

[0-9]+            { yylval.num = atoi(yytext); return NUM; }

"{"               return LBRACE;
"}"               return RBRACE;
[ \t\n]+           /* ignorar espaços e quebras de linha */
.                  /* ignorar outros caracteres */

%%

int yywrap() { return 1; }
