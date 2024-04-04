%{
 int lc=0,sc=0,tc=0,ch=0,c=0,wc=0;
%}
%%
\n {lc++;}
([ ]) {sc++;}
\t {tc++;}
. {ch++;c++;}
[a-zA-Z0-9]+ {wc++;c=c+yyleng;}
%%
int yywrap(){}
int main()
{
 printf("enter string ");
  yylex();
  printf("\nline count =%d \ntab count =%d \n char count =%d\nword count =%d \nspace count=%d\n",lc,tc,c,(wc+ch),sc);
}
