@echo off
setlocal

REM Uso:
REM env VAR
REM env VAR valor
REM env VAR clear

set "_VAR=%~1"
set "_VAL=%~2"

if "%_VAR%"=="" (
    echo Uso: env VAR [valor^|clear]
    goto :EOF
)

REM === GETTER ===
if "%_VAL%"=="" (
    if defined %_VAR% (
        call echo %_VAR% %%%_VAR%%%
    ) else (
        echo %_VAR% nao definido
    )
    goto :EOF
)

REM === CLEAR ===
if /i "%_VAL%"=="clear" (
    set "%_VAR%="
    echo %_VAR% removido
    endlocal & set "%_VAR%="
    goto :EOF
)

REM === SETTER ===
set "%_VAR%=%_VAL%"
call echo %_VAR% %%%_VAR%%%

endlocal & set "%_VAR%=%_VAL%"