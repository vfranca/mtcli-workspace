@echo off

call settings

setx MTCLIPATH %CD%
setx MTCLIDEBUG 1

set "SCRIPT=%MTCLIPATH%\autorun.bat"

if not exist "%SCRIPT%" (
    echo [ERRO] autorun.bat nao encontrado em:
    echo %SCRIPT%
    exit /b 1
)

reg add "HKCU\Software\Microsoft\Command Processor" ^
/v AutoRun ^
/t REG_SZ ^
/d "call \"%SCRIPT%\"" ^
/f

call %SCRIPT%

echo [OK] AutoRun configurado.