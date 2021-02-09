%top{
	#include <stdio.h>
	#include "tokens.h"
}	

%option header-file="scanner.h"
%option outfile="scanner.c"
%option noinput
%option nounput

Letra														[[:alpha:]]
Digito														[0-9]
Alfanumerico												[[:alnum:]]
Espacio														[[:space:]]
OperadorAsignacion											<-
Comentario													"##".*
Otros														[[:^alnum:]]{-}[[:space:]\+\-*/;,()]

%%
programa													return PROGRAMA;
fin-prog													return FINPROG;
leer														return LEER;
escribir 													return ESCRIBIR;
declarar													return DECLARAR;
{Letra}{Alfanumerico}*										return IDENTIFICADOR;
{Digito}+													return CONSTANTE;
"("															return '(';
")"															return ')';
","															return ',';
";"															return ';';
"+"															return '+';
"-"															return '-';
"*"															return '*';
"/"															return '/';
{OperadorAsignacion}										return OPERADOR_ASIGNACION;
{Otros}+													printf("Error léxico: cadena desconocida: %s\n", yytext);
{Letra}{Alfanumerico}*{Otros}+({Alfanumerico}|{Otros})*		printf("Error léxico: identificador inválido: %s\n", yytext);
{Digito}+{Letra}+{Alfanumerico}*							printf("Error léxico: constante inválida: %s\n", yytext);
{Espacio}+													/* ignorar */
{Comentario}												/* ignorar */
%%
