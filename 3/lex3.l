DIGIT [0-9]
ID [a-zA-Z][a-zA-Z0-9]*
KEYWORD for|else|while|if|"do while"|switch
OPERATOR [<|>|+|-|*|/|"<>"|"+="|">="]
SINGLECOMMENT [//][//][//]*({ID}*|{DIGIT}*|{KEYWORD}*|{OPERATOR}*|[ \t])*
MULTICOMMENT [/*]*({ID}*|{DIGIT}*|{KEYWORD}*|{OPERATOR}*|[ \t]|[;]|[ \n])*[*/]

%%
{SINGLECOMMENT} {printf("\n%s is a Single line Comment\n",yytext);}
{DIGIT}+ {printf("\n%s is an Integer\n",yytext);}
{KEYWORD}+ {printf("\n%s is a Keyword\n",yytext);}
{ID}+ {printf("\n%s is an Identifier\n",yytext);}
{OPERATOR}+ {printf("\n%s is a Operator\n",yytext);}
{MULTICOMMENT} {printf("\n%s is a Multi line Comment\n",yytext);}

%%

int main()
{
printf("Enter the String: ");
yyin=stdin;
yylex();
return 0;
}
