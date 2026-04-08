@echo off
rem mtcli - timeframe runner

setlocal
if "%~1"=="" (
    echo uso: tf [periodo] [view opcional] [bars opcional]
    goto :EOF
)

set "PERIOD=%~1"

if "%~2"=="" (
    set "VIEW=ch"
) else (
    set "VIEW=%~2"
)

if "%~3"=="" (
    set "COUNT=600"
) else (
    set "COUNT=%~3"
)

call settings
call p %PERIOD%
call w %VIEW%
call q %COUNT%
call candle %*
endlocal & (
    set PERIOD=%PERIOD%
)

