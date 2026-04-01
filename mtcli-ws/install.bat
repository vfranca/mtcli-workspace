@echo off

set "SCRIPT=%USERPROFILE%\b3\startup.bat"

if not exist "%SCRIPT%" (
    echo [ERRO] startup.bat nao encontrado em:
    echo %SCRIPT%
    exit /b 1
)

reg add "HKCU\Software\Microsoft\Command Processor" ^
/v AutoRun ^
/t REG_SZ ^
/d "call \"%SCRIPT%\"" ^
/f

echo [OK] AutoRun configurado.