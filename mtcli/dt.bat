@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem set y=2022
rem
rem modo intraday
rem
rem verifica o modo intraday
rem
if "%1" == "" (goto :VERIFICA)

rem
rem desativa o modo intraday
rem
if "%1" == "0" (goto :DESATIVA)

rem
rem ativa o modo intraday
rem
if not "%~1" == "" (set i=%1)
if not "%~2" == "" (set m=%2)
if not "%~3" == "" (set y=%3)
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
