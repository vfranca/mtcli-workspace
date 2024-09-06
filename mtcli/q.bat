@echo off
rem mtcli
rem variaveis de ambiente
rem count
call mtcli
if "%1" == "" (
echo %COUNT%
goto :EOF
)
set COUNT=%1
