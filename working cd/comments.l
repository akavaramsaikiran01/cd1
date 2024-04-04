%{
   #include<stdio.h>
   int mc=0,sc=0;
%}

%%
"/*"[a-zA-Z0-9 \t\n]*"*/" {mc++;}
"//"[a-zA-Z0-9 \t]*"\n" {sc++;}
%%

int yywrap(){
   return 1;
}


int main(int argc,char* argv[]){
 if(argc==2){
   yyin=fopen(argv[1],"r");
 }
 else
 {
   yyin=stdin;
 }
 yylex();
 printf("number of multiple line comments:%d\n",mc);
 printf("number of single line comments:%d\n",sc);
}
