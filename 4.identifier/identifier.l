%{
    #include<stdlib.h>
%}

DIGIT       [0-9]
CHARECTER   [a-zA-Z]
UNDERSCORE  [_]
IDENTIFIER  ({CHARECTER}|{UNDERSCORE})+({CHARECTER}|{DIGIT}|{UNDERSCORE})*
BLANK   [' ', '\t', '\n']
AL  (.)+

%%

{IDENTIFIER}    {printf("%s is a Identifier\n", yytext);}
{BLANK} {printf("");}
{AL}    {printf("%s is not a Identifier\n", yytext);}

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