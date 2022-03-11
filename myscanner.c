#include <stdio.h>
#include "myscanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;


int main(void)
{
    int ntoken, vtoken;

    ntoken = yylex();
    while(ntoken){
        printf("'%s' - %d\n",yytext, ntoken);
        ntoken = yylex();
    }
    
}
