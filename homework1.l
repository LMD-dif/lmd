%{
#include<stdio.h>
#include<stdlib.h>
void show(const char *type, const char *test)
{
   printf("%s  %s \n", type, test);
}

int yywrap(void);

%}
digit           [0-9]
letter          [a-zA-Z]
id              ({letter}|_)({letter}|{digit}|_)*
num             {digit}+(\.{digit}+)?(E[+\-]?{digit}+)?  

%%
"int"          {show("KEY WORD:", yytext);}
"char"         {show("KEY WORD:", yytext);}
"if"           {show("KEY WORD:", yytext);}
"for"          {show("KEY WORD:", yytext);}
"void"         {show("KEY WORD:", yytext);}
"else"         {show("KEY WORD:", yytext);}
"return"       {show("KEY WORD:", yytext);}
"while"        {show("KEY WORD:", yytext);}
"elseif"       {show("KEY WORD:", yytext);}
"float"        {show("KEY WORD:", yytext);}
"string"       {show("KEY WORD:", yytext);}
"end"          {show("KEY WORD:", yytext);}
"case"         {show("KEY WORD:", yytext);}
"break"        {show("KEY WORD:", yytext);}
"bool"         {show("KEY WORD:", yytext);}
"read"         {show("KEY WORD:", yytext);}
"exit"         {show("KEY WORD:", yytext);}
"double"       {show("KEY WORD:", yytext);}
"+"            {show("OPERATER:", yytext);}
"-"            {show("OPERATER:", yytext);}
"="            {show("OPERATER:", yytext);}
"*"            {show("OPERATER:", yytext);}
"/"            {show("OPERATER:", yytext);}
">"            {show("OPERATER:", yytext);}
"<"            {show("OPERATER:", yytext);}
"<="           {show("OPERATER:", yytext);}
">="           {show("OPERATER:", yytext);}
"=="           {show("OPERATER:", yytext);}
"++"           {show("OPERATER:", yytext);}
"--"           {show("OPERATER:", yytext);}
"!="           {show("OPERATER:", yytext);}
"&&"           {show("OPERATER:", yytext);}
"||"           {show("OPERATER:", yytext);}
"!"            {show("OPERATER:", yytext);}
"?:"           {show("OPERATER:", yytext);}
{id}           {show("IDENTIFIER", yytext);}
{num}          {show("NUMBER", yytext);}
";"            {show("DIVIDER:", yytext);}
"{"            {show("DIVIDER:", yytext);}
"}"            {show("DIVIDER:", yytext);}
","            {show("DIVIDER:", yytext);}
"("            {show("DIVIDER:", yytext);}
")"            {show("DIVIDER:", yytext);}
"["            {show("DIVIDER:", yytext);}
"]"            {show("DIVIDER:", yytext);}
[ \t\n\r]+
.              { printf("UNRECOGNIZED: '%s'\n", yytext); }


%%
int main()
{
    yyin = stdin; // 读取标准输入
    yylex(); // 开始词法分析
}


int yywrap(void)

{
      return 1;
}                  