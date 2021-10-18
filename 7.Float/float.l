%{
    #include<stdlib.h>
%}

DIGIT       [0-9]
INTEGER     ({DIGIT})+
FLOAT     ({INTEGER})?([.]({INTEGER}))
BLANK   [' ', '\t', '\n']
AL  (.)+

%%

{FLOAT}    {printf("%s is a Floating point number\n", yytext);}
{BLANK} {printf("");}
{INTEGER} {printf("");}
{AL}    {printf("");}

%%

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();

    return 0;
}

int yywrap()
{
    return 0;
}