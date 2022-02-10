@echo off
rem mtcli
rem média móvel  do diário
if "%1" == "" (
sma %t% -p daily -c 20
goto :EOF
)
sma %t% -p daily -c %1
