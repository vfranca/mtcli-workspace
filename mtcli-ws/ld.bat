@echo off

if "%SYMBOL%"=="" (
    echo SYMBOL nao definido
    exit /b 1
)

set "FNAME=tmp\%SYMBOL%.bat"

if exist "%FNAME%" (
    call "%FNAME%"
    if /i not "%1"=="/q" (
        echo marcacoes carregadas de %FNAME%
    )
) else (
    echo %FNAME% nao foi encontrado
    exit /b 1
)