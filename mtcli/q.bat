@echo off
rem mtcli
rem marcações
rem count
call mtcli
if "%1" == "" (
echo BARRAS %COUNT%
goto :EOF
)
set COUNT=%1
