@echo off
rem mtcli
rem marcações
rem trend channel line
call mtcli
if "%1" == "" (
echo %TCL%
goto :EOF
)
set tcl=%1
