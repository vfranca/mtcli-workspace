@echo off
rem mtcli
rem calcula uma venda

setlocal
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

call op e %ENTRADA% --risco %SL% --retorno %RR% --venda
endlocal & (
    set E=%ENTRADA%
)
