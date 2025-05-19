@echo off
rem mtcli
rem calcula uma compra
if "%1" == "" (
if defined e (
goto :compra
) else (
echo entrada indefinida
)
) else (
call e %1
goto :compra
)
goto :eof

:compra
op e %1 --risco %R% --retorno %RR% --compra
