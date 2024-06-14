@echo off
rem pasta mtcli
rem verifica o modo intraday
if "%1" == "" (goto :VERIFICA)
rem desativa o modo intraday
if "%1" == "0" (goto :DESATIVA)
rem ativa o modo intraday
if not "%~1" == "" (call i %1)
if not "%~2" == "" (call m %2)
if not "%~3" == "" (call y %3)
set id=%Y%.%M%.%I%
echo %ID%
goto :EOF

:desativa
set id=""
echo modo intraday desativado
goto :EOF

:verifica
if not %ID% == "" (
echo %ID%
) else (
echo modo intraday desativado
)
goto :EOF
