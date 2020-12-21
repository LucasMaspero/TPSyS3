%top{
	#include <stdio.h>
	#include "tokens.h"
}	

%option header-file="scanner.h"
%option outfile="scanner.c"
%option noinput
%option nounput

Letra								[[:alpha:]]
Digito								[0-9]
Alfanumerico							[[:alnum:]]
Espacio							[[:space:]]
PalabraReservada						"programa"|"declarar"|"leer"|"escribir"|"fin-prog"
OperadorAsignacion						<-
Operador							[+\-*/]
CaracterPuntuacion						[;,()]
Comentario							"##".*
Otros								[[:^alnum:]]{-}[[:space:]\+\-*/;,()]

%%
{PalabraReservada}						return PALABRA_RESERVADA;
{Letra}{Alfanumerico}*						return IDENTIFICADOR;
{Digito}+							return CONSTANTE;
{OperadorAsignacion}						return OPERADOR_ASIGNACION;
{Operador}							return OPERADOR;
{CaracterPuntuacion}						return CARACTER_PUNTUACION;
{Otros}+							printf("Error léxico: cadena desconocida: %s\n", yytext);
{Letra}{Alfanumerico}*{Otros}+({Alfanumerico}|{Otros})*	printf("Error léxico: identificador inválido: %s\n", yytext);
{Digito}+{Letra}+{Alfanumerico}*				printf("Error léxico: constante inválida: %s\n", yytext);
{Espacio}*							/* ignorar */
{Comentario}							/* ignorar */
%%