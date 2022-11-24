@echo off
rem
rem sem entrada
rem
if "%~1" == "" (
python e.py %E% %X% %A%
goto :EOF
) 
rem
rem com entrada
rem

set E=%1
python e.py %1 %X% %A%
