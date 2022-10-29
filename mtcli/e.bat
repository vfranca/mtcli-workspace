@echo off
if "%~1" == "" (
python trade1.py %E% %SL% %SG%
goto :EOF
) 
set E=%1
python trade1.py %1 %SL% %SG%
