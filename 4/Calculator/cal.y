%{

    #include<stdio.h>

    int flag=0;

   

%}

%token NUMBER



%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

%%

ArithmeticExpression: E{

         printf("\n\tRESULT=%d\n",$$);

         return 0;

        };

E:E'+'E {$$=$1+$3;}

 |E'-'E {$$=$1-$3;}

 |E'*'E {$$=$1*$3;}

 |E'/'E {$$=$1/$3;}

 |E'%'E {$$=$1%$3;}

 |'('E')' {$$=$2;}
 
 |'-'E {$$=-$2;}

 | NUMBER {$$=$1;}

;

%%



void main()

{

   printf("\nEnter Any Arithmetic Expression\n\t1.Addition\n\t2.Subtraction\n\t3.Multiplication\n\t4.Divison\n\t5.Modulus\n\t6.Round brackets\n\n\t:");

   yyparse();

  if(flag==0)

   printf("\n\tEntered Arithmetic Expression is VALID\n\n");

 

}

void yyerror()

{

   printf("\n\tEntered Arithmetic Expression is INVALID\n\n");

   flag=1;

}
