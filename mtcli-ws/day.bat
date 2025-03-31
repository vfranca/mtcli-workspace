@echo off
if "%1" == "" (
rem set day=%Y%-%M%-%I%
rem echo %Y%-%M%-%I%
echo %DAY%
goto :EOF
)
call y %1
call m %2
call i %3
set day=%y%-%m%-%i%
