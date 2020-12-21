/*
    Trabajo Practico N°3 - Lenguaje Mini (Gramatica Lexica y Flex)
        Tercer Trabajo Practico Sintaxis y Semantica de los Lenguajes - Año 2020 - Curso K2053

    Integrantes
        Lucas Maspero (Legajo 161542-7)
        Franco Nicolás Magne Colque (Legajo 168756-6)
        Natalia Gutiérrez (Legajo 156549-7)
*/

#include "scanner.h"

int token;

int main() 
{
	do 
	{
		token = yylex();
		
		switch (token)
		{
			case PALABRA_RESERVADA:
				printf("Token: Palabra Reservada\tLexema: %s\n", yytext);
				break;
			case IDENTIFICADOR:
				printf("Token: Identificador\tLexema: %s\n", yytext);
				break;
			case CONSTANTE:
				printf("Token: Constante\tLexema: %s\n", yytext);
				break;
			case OPERADOR_ASIGNACION:
				printf("Token: Operador Asignación\tLexema: %s\n", yytext);
				break;
			case OPERADOR:
				printf("Token Operador\tlexema: '%c'\n", yytext[0]);
				break;
			case CARACTER_PUNTUACION:
				printf("Token Caracter de Puntuacion\tlexema: '%c'\n", yytext[0]);
				break;
			case FDT:
				printf("Token: Fin de Archivo");
				break;
		}
	} while (token != FDT);
	
	return 0;
}