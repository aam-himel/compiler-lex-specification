%{
    #include<stdio.h>
%}

VERB    am|is|are|was|were|be|being|been|do|does|did|would|should|can|could|have|had|go
ADVERB  quickly|simply
PREPOSITION with|in|from|to
BLANK   [' ', '\t', '\n']
AL  (.)+

%%

{VERB}  {printf("%s is a Verb, len = %d\n", yytext);}
{ADVERB}  {printf("%s is a Adverb\n", yytext);}
{PREPOSITION}  {printf("%s is a Preposition\n", yytext);}
{BLANK} {printf("");}
{AL}     {printf("%s is Unknown\n", yytext);}

%%

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    return 0;
}

int yywrap(){
    return 0;
}