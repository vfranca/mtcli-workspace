@echo off
rem mtcli
rem calcula uma venda
if "%1" == "" (
if defined e (
goto :venda
) else (
echo entrada indefinida
)
) else (
call e %1
goto :venda
)
goto :eof

:venda
op e %1 --risco %SP% --retorno %RR% --venda
