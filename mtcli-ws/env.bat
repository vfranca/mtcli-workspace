@echo off
setlocal

REM Uso:
REM env VAR
REM env VAR valor
REM env VAR clear

set "VAR=%~1"
set "VAL=%~2"

if "%VAR%"=="" (
    echo Uso: env VAR [valor^|clear]
    goto :EOF
)

REM === GETTER ===
if "%VAL%"=="" (
    if defined %VAR% (
        call echo %VAR% %%%VAR%%%
    ) else (
        echo %VAR% nao definido
    )
    goto :EOF
)

REM === CLEAR ===
if /i "%VAL%"=="clear" (
    set "%VAR%="
    echo %VAR% removido
    endlocal & set "%VAR%="
    goto :EOF
)

REM === SETTER ===
set "%VAR%=%VAL%"
call echo %VAR% %%%VAR%%%

endlocal & set "%VAR%=%VAL%"