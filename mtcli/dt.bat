@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem ferramentas de trading
rem modo intraday
rem verifica o modo intraday
if "%1" == "" (goto :VERIFICA)

rem desativa o modo intraday
if "%1" == "0" (goto :DESATIVA)

rem ativa o modo intraday
if not "%~1" == "" (set i=%1)
if not "%~2" == "" (set m=%2)
if not "%~3" == "" (set y=%3)
set id=%Y%.%M%.%I%
echo modo intraday ativado %ID%
goto :EOF

:desativa
set id=""
echo modo intraday desativado
goto :EOF

:verifica
if not %ID% == "" (
echo modo intraday ativado %ID%
) else (
echo modo intraday desativado
)
goto :EOF
