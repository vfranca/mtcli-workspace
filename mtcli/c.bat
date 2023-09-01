@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem operacao de compra
if "%1" == "" (
goto :COMPRA
goto:EOF
) else (
set e=%1
goto :COMPRA
goto :EOF
)

:COMPRA
if "%E%" == "" (
set /p e=entrada:
)
gr t %e% --risco %r% --retorno %rr%
