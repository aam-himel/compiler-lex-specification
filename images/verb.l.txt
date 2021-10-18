%{
    #include<stdlib.h>
%}

VERB    am|is|are|was|were|be|being|been|do|does|did|would|should|can|could|have|had|go
BLANK   [' ', '\t', '\n']
AL  (.)+

%%

{VERB}  {printf("%s is a Verb\n", yytext);}
{BLANK} {printf("");}
{AL}    {printf("%s is not a Verb\n", yytext);}

%%

int main(void)
{
    yyin = fopen("input.txt", "r");

    yylex();
    return 0;
}

int yywrap(void){
    return 0;
}