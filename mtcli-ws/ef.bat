@echo off
setlocal
set "cmd=mt effort --timeframe %period%"
if "%~1"=="" (
    call %cmd% --bars 20
) else (
    call %cmd% --bars %1
)
endlocal