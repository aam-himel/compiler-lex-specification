%{
    #include<stdlib.h>
%}

KEYWORD include|if|main|switch|do|int|float|double|string|for|while|EOF|else|char
BLANK   [' ', '\t', '\n']
AL  (.)+

%%

{KEYWORD}   {printf("%s is a Keyword\n", yytext);}
{BLANK}   {printf("");}
{AL}   {printf("%s is not a Keyword\n", yytext);}

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