@echo off

echo Generando parser...
bison -d aleph.y

echo Generando lexer...
flex aleph.l

echo Compilando...
gcc -o aleph.exe aleph.tab.c lex.yy.c aleph.c TADdataType.c 

echo.
echo Compilacion terminada.
pause
