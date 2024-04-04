%{
#include<stdio.h>
int length;
void fun(int);
%}

%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%

void fun(int l)
{
  if(yytext[0]=='A' || yytext[0]=='a')
   {
     if(length==3)
       {
         printf("%s is of length 3 and start with A.",yytext);
       }
     else
      printf("%s is not of length 3",yytext);  
   }
  else
   printf("%s is not start with A.",yytext); 
}

int yywrap(){}
int main()
{
yylex();
return 0;
}
