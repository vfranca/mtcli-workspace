@echo off
if "%1" == "" (
set dte=%Y%.%M%.%I%
echo DATA %Y%.%M%.%I%
goto :EOF
)
call y%1
call m %2
call i %3
set dte=%y%.%m%.%i%
