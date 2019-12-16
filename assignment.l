Header   "#include<stdio.h>"|"#include<bits/stdc++.h>"
Main     "main()"
Bracket1  [()]
Bracket2  [{}]
Bracket3  [[]]
Keyword   "int"|"double"|"char"|"string"|"long long int"|"bool"|"float"
State     "break"|"continue"
Return    "return"
Return0   "return 0"
Digit    [0-9]
Letter   [a-zA-Z]
Space    [ ]
Addition         [+]
Subtraction         [-]
Multiplication         [*]
Division        [/]
Equal       "=="
Asign       [=]
Greater          [>]
Greater_equal         ">="
Less_than          [<]
Less_than_equal         "<="
Int_number        "%d"
Float_number       "%f"
Long_long_Int     "%lld"
Token       [,;]
Input       "&"{Letter}+{Digit}*
Function1       {Letter}+{Bracket1}?
Function2      {Keyword}{}Space}+{Letter}+{Bracket1}
Function3       {Letter}+("(")
For       ("for")("(")
While       ("while")("(")
Increment_operator   "++"
Decrement_operator   "--"
Sum_and_Asign_operator   "+="
Sub_and_Asign_operator   "-="
Mul_and_Asign_operator   "*="
Div_and_Asign_operator   "/="
Mod_operator         "%"
NotEqual_operator    "!="
And_operator         "&&"
Or_operator          "||"
Not_operator         "!"
Array       {Letter}+("["){Digit}+("]")
%{
	

%}
%%
{State}                              printf("%s is a Statement\n",yytext);
{Return}                              printf("%s is Return a Value\n",yytext);
{Digit}+                              printf("%s is a Positive Digit\n",yytext);
{Header}                              printf("%s is a Header File\n",yytext);
{Main}                                printf("%s is a Main Function\n",yytext);
("{")                                 printf("%s is a Single Bracket Open\n",yytext);
("}")                                 printf("%s is a Single Bracket Close\n",yytext);
{Input}                               printf("%s is an Input Specifier\n",yytext);
"scanf"{Bracket1}                          printf("%s) is a Scanf Function\n",yytext);
"if"{Bracket1}                             printf("%s) is a Conditional Statement\n",yytext);
"else if"{Bracket1}                        printf("%s) is a Conditional Statement\n",yytext);
"else"{Bracket1}                           printf("%s) is a Conditional Statement\n",yytext);
"printf"{Bracket1}                         printf("%s) is a Print Function\n",yytext);
{Keyword}                             printf("%s is a Keyword\n",yytext);
{Letter}+{Digit}*                     printf("%s is a Variable\n",yytext);

[-]{Digit}+                           printf("%s is a Negative Digit\n",yytext);
{Addition}                                 printf("%s is a Add Opetator\n",yytext);
{Increment_operator}                           printf("%s is a Increment Opetator\n",yytext);
{Decrement_operator}                           printf("%s is a Decrement Opetator\n",yytext);
{Subtraction}                                 printf("%s is a Substraction Opetator\n",yytext);
{Multiplication}                                 printf("%s is a Multiplication Opetator\n",yytext);
{Sum_and_Asign_operator}                           printf("%s is a Summation And Assignment Opetator\n",yytext);
{Sub_and_Asign_operator}                           printf("%s is a Substraction And Assignment Opetator\n",yytext);
{Mul_and_Asign_operator}                           printf("%s is a Multiplication And Assignment Opetator\n",yytext);
{Div_and_Asign_operator}                           printf("%s is a Division And Assignment Opetator\n",yytext);
{Mod_operator}                                 printf("%s is a Modulation Opetator\n",yytext);
{NotEqual_operator}                            printf("%s is a NotEqual Opetator\n",yytext);
{And_operator}                                 printf("%s is an  And  Opetator\n",yytext);
{Or_operator}                                  printf("%s is an Or Opetator\n",yytext);
{Not_operator}                                 printf("%s is a Not Opetator\n",yytext);
{Division}                                 printf("%s is a Division Opetator\n",yytext);
{Equal}                               printf("%s is a Equal Opetator\n",yytext); 
{Asign}                               printf("%s is a Assignment Opetator\n",yytext);
{Greater}                                  printf("%s is a Greater Than Opetator\n",yytext);
{Greater_equal}                                 printf("%s is a Greater Than Equal Opetator\n",yytext);
{Less_than}                                  printf("%s is a Lesser Than  Opetator\n",yytext);
{Less_than_equal}                                 printf("%s is a Lesser Than Equal Opetator\n",yytext);
{Int_number}                                 printf("%s is a Integer Identifier\n",yytext);
{Float_number}                               printf("%s is a Floating Identifier\n",yytext);
{Long_long_Int}                             printf("%s is a Long Long Integer Identifier\n",yytext);
{Token}                               printf("%s is a Token\n",yytext);

{Return0}                             printf("%s Returns From The Program\n",yytext);
{Array}                               printf("%s Is an Array\n",yytext);
\n                                    printf( "newline\n");

{For}                                printf("%s) is a For Loop\n",yytext);
{While}                                   printf("%s) is a While Loop\n",yytext); 

{Keyword}{Space}+{Letter}+("("){Keyword}{Space}+{Letter}+   printf("%s.....) is a Parameterized Returntype Function\n",yytext);
{Letter}+("("){Keyword}{Space}+{Letter}+                      printf("%s.....) is a Parameterized Non Returntype function\n",yytext);

{Function1} 						          printf("%s) is  NonPerameterized NON Returntype Function\n\n",yytext);
("\""){Space}*{Digit}*{Letter}+{Space}*{Letter}*("\"")				printf("%s is a Message Print\n\n",yytext);
("/*"){Letter}+{Space}+{Letter}+{Space}*("*/")                                 printf("%s is a comment line\n\n",yytext);
%%
int yywrap()
{
	return 1;
}
main()
{
    	yyin = freopen( "input.txt", "r",stdin);
	yyout = freopen("output.txt", "w",stdout);
	yylex();
	fclose(yyin);
	fclose(yyout);
	
}