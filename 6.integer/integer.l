%{
    #include<stdlib.h>
%}

DIGIT       [0-9]
INTEGER     ({DIGIT})+
BLANK   [' ', '\t', '\n']
AL  (.)+

%%

{INTEGER}    {printf("%s is a Integer\n", yytext);}
{BLANK} {printf("");}
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