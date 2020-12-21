# Trabajo Practico N°3 - Lenguaje Mini (Analizador Léxico / Scanner con Flex)
Tercer Trabajo Practico Sintaxis y Semantica de los Lenguajes - Año 2020 - Curso K2053

## Integrantes
* Lucas Maspero               (Legajo 161542-7)
* Franco Nicolás Magne Colque (Legajo 168756-6)
* Natalia Gutiérrez           (Legajo 156549-7)

## Instalacion
* IDE: **Visual Studio Code**
* Descargar Archivos: "**git clone https://github.com/LucasMaspero/TPSyS3.git**"

## Ejecucion
1) Ubicarse en carpeta Resolucion: "**cd Resolucion**"
2) Ejecutar Flex: "**flex scanner.l**" (recordar hacerlo en la Máquina Virtual de Ubuntu en donde ya esta instalado **flex**)
3) Compilar: "**gcc -g -Wall scanner.c main.c -o tp3 -lfl**"
4) Ejecutar: "**tp3 < ../DatosDePrueba/entrada.txt >./DatosDePrueba/salidaTP3.txt**"

**NOTA**: el ejecutable *tp3* fue generado usando **flex**, por lo que si se quiere probar se podria omitir el punto 2) y el punto 3). Sin embargo, tiene que ser ejecutado en un entorno linux.