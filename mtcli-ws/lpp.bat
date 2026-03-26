@echo off

REM === GETTER ===
if "%~1"=="" (
    if defined MTCLI_LOG_PER_PROCESS (
        echo MTCLI_LOG_PER_PROCESS=%MTCLI_LOG_PER_PROCESS%
    ) else (
        echo MTCLI_LOG_PER_PROCESS nao definido
    )
    goto :EOF
)

REM === CLEAR ===
if /i "%~1"=="clear" (
    set MTCLI_LOG_PER_PROCESS=
    echo MTCLI_LOG_PER_PROCESS removido
    goto :EOF
)

REM === SETTER ===
set "MTCLI_LOG_PER_PROCESS=%~1"
echo MTCLI_LOG_PER_PROCESS=%MTCLI_LOG_PER_PROCESS%