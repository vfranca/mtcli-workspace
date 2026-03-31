@echo off
rem mtcli
rem calcula uma compra

setlocal
set "ENTRADA=%~1"

if "%ENTRADA%"=="" (
    if defined E (
        set "ENTRADA=%E%"
    ) else (
        echo entrada indefinida
        goto :eof
    )
) else (
    call e %ENTRADA%
)

call op e %ENTRADA% --risco %SL% --retorno %RR% --compra
endlocal