@echo off
rem mtcli
rem variaveis de ambiente
rem risco / stop padrão
if "%1" == "" (
echo %bbasr%
goto :EOF
)
set bbasr=%1
