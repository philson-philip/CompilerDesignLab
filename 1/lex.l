digit [0-9]
letter [a-zA-Z]
%{
	int count=0;
%}

%%
{letter}({letter}|{digit})*	count++;
%%

int main()
{
yylex();
printf("Number of Identifiers=%d\n",count);
return 0;
}

