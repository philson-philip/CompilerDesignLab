DIGIT [0-9]
ID [a-zA-Z][a-zA-Z0-9]*

%%
{DIGIT}+ {printf("\n%s is an Integer\n",yytext);}
{ID}+ {printf("\n%s is an Identifier\n",yytext);}

%%

int main()
{
printf("Enter the String: ");
yyin=stdin;
yylex();
return 0;
}
