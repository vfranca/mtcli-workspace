@echo off
rem mtcli
rem marcações
rem spread 
call mtcli
if "%1" == "" (
echo %SPD%
goto :EOF
)
set spd=%1
