@echo off
rem mtcli
rem calcula uma compra

set "ENTRADA=%~1"

if "%ENTRADA%"=="" (
    if defined e (
        set "ENTRADA=%e%"
    ) else (
        echo entrada indefinida
        goto :eof
    )
) else (
    call e %ENTRADA%
)

op e %ENTRADA% --risco %SL% --retorno %RR% --compra