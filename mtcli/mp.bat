@echo off
rem mtcli
rem
rem variáveis de ambiente
rem
rem movimento projetado
rem
rem exibe o valor da variável
rem
if "%1" == "" (
echo %MP%
goto :EOF
)
rem
rem define novo valor
rem
set MP=%1
