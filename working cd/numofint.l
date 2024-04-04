%{
#include<stdio.h>
int inte=0,deci=0;
%}

%%
[0-9]+"."[0-9]+ {ECHO;printf(" is decimal\n");deci++;}
[0-9]+ {ECHO;printf(" is integer\n");inte++;} 
%%

int yywrap()
{
  return 1;
}

int main()
{
  yylex();
  printf("no of integers =%d \n no of decimals =%d",inte,deci);
  return 0;
}
