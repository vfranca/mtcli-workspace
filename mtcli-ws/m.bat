@echo off
rem mtcli
rem marcações
rem month
call mtcli
if "%1" == "" (
echo %M%
goto :EOF
)
set m=%1
call day %Y% %1 %I%
