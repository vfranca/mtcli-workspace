@echo off
rem aliases para comandos do mtcli
rem exibe/define a variável period
rem variaveis de entrada
set period=%1
rem ajuda
if "%1" == "-h" (
echo exibe/define o period do terminal
echo digite p period
echo exemplo:
echo p m15
goto :EOF
)
rem comandos
rem exibe o period do terminal
if "%1" == "" (
echo period=%p%
goto :EOF
)
rem define o period do terminal
set p=%period%
echo period=%p%
