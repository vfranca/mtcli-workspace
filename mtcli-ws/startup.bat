@echo off

if defined B3_STARTED goto :EOF
set B3_STARTED=1

cd /d "%B3%"

call aliases.bat
call lpp 1

mt risco start