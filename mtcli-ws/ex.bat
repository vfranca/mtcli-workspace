@echo off
setlocal

rem mtcli
rem exporta o grafico para um arquivo TXT

call mtcli

rem -----------------------------
rem validacoes basicas
rem -----------------------------
if not defined SYMBOL (
    echo ERRO: SYMBOL nao definido
    goto :EOF
)

if not defined PERIOD (
    echo ERRO: PERIOD nao definido
    goto :EOF
)

if not defined DIR_EXP (
    set "DIR_EXP=export"
)

rem -----------------------------
rem nome do arquivo
rem -----------------------------
set "FILE_EXP=%SYMBOL%-%PERIOD%-%Y%-%M%-%I%-%VIEW%"

rem fallback para VIEW
if not defined VIEW set "VIEW=ch"

rem -----------------------------
rem cria diretorio
rem -----------------------------
if not exist "%DIR_EXP%" (
    mkdir "%DIR_EXP%"
)

rem -----------------------------
rem define quantidade de candles
rem -----------------------------
set "COUNT=%~1"

if "%COUNT%"=="" (
    set "COUNT=20"
)

rem -----------------------------
rem execucao
rem -----------------------------
rem se foi passado apenas numero → usa como COUNT
rem se foi passado comando completo → executa direto

echo %COUNT% | findstr /r "^[0-9][0-9]*$" >nul

if not errorlevel 1 (
    rem parametro eh numero
    %PERIOD% %COUNT% > "%DIR_EXP%\%FILE_EXP%.txt"
) else (
    rem comando completo (ex: tf 5 ch)
    call %* > "%DIR_EXP%\%FILE_EXP%.txt"
)

rem -----------------------------
rem abre arquivo
rem -----------------------------
start "" "%DIR_EXP%\%FILE_EXP%.txt"

endlocal