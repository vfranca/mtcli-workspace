@echo off
if "%1" == "" (
rem set day=%Y%-%M%-%I%
rem echo %Y%-%M%-%I%
echo %DAY%
goto :EOF
)
rem call y %1
rem call m %2
rem call i %3
rem set day=%Y%-%M%-%I%
set day=%1-%2-%3
