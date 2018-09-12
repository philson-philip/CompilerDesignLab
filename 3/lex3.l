DIGIT [0-9]
ID [a-zA-Z][a-zA-Z0-9]*
KEYWORD for|else|while|if|"do while"|switch
OPERATOR [<|>|+|-|*|/|"<>"|"<="|">="]

%%
{DIGIT}+ {printf("\n%s is an Integer\n",yytext);}
{KEYWORD}+ {printf("\n%s is a Keyword\n",yytext);}
{ID}+ {printf("\n%s is an Identifier\n",yytext);}
{OPERATOR}+ {printf("\n%s is a Operator\n",yytext);}
[ \t\n];

%%

int main()
{
printf("Enter the String: ");
yyin=stdin;
yylex();
return 0;
}
