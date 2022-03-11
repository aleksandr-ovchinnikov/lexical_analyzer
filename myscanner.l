%{
    #include "myscanner.h"

%}

%%
;       return SEMICOLON;
\(\) return BRACKETS;
:=      return ASSERT;
[\+\-\*\/]   return OPERATORS;
[a-zA-Z][_a-zA-Z0-9]*   return IDENTIFIER;
[+-]?([0-9]*[.])?[0-9]+ return FLOAT; 
[ \t\n ]    ;
.           printf("unknown symbol\n");
%%

int yywrap(void)
{
    return 1;
}
