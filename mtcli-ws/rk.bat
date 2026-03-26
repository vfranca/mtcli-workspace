@echo off
setlocal

REM === GETTER ===
if "%~1"=="" (
    if defined renko (
        echo RENKO=%renko%
    ) else (
        echo RENKO nao definido
    )
    goto :EOF
)

REM === CLEAR ===
if /i "%~1"=="clear" (
    set "renko="
    echo RENKO removido
    goto :EOF
)

REM === VALIDACAO ===
if /i not "%~1"=="candle" if /i not "%~1"=="tick" (
    echo Valor invalido. Use: candle ou tick
    goto :EOF
)

REM === SETTER ===
set "renko=%~1"
echo RENKO=%renko%

endlocal & set "renko=%renko%"