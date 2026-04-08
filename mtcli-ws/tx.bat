@echo off
rem mtcli
rem exporta candles para TXT e abre no notepad
rem unificado: intraday + count + view + custom command

call settings

rem =========================
rem validações básicas
rem =========================
if not defined SYMBOL (
    echo ERRO: SYMBOL nao definido
    exit /b 1
)

if not defined PERIOD (
    echo ERRO: PERIOD nao definido
    exit /b 1
)

rem =========================
rem view padrão (candle)
rem =========================
call w ch

rem =========================
rem atalhos de view
rem =========================
if /i "%~1"=="f" call w f
if /i "%~1"=="r" call w r
if /i "%~1"=="v" call w v

rem =========================
rem nome do arquivo
rem =========================
set "FILE_TXT=%SYMBOL%-%PERIOD%-%Y%-%M%-%I%-%VIEW%.txt"

rem =========================
rem diretório de saída
rem =========================
if not defined DIR_TXT (
    set "DIR_TXT=txt"
)

if not exist "%DIR_TXT%" (
    mkdir "%DIR_TXT%"
)

rem =========================
rem detecção de número
rem =========================
set "IS_NUMBER="
echo %~1 | findstr /r "^[0-9][0-9]*$" >nul && set IS_NUMBER=1

rem =========================
rem decisão de execução
rem =========================

rem sem parâmetro → padrão
if "%~1"=="" goto :intraday

rem apenas view → padrão
if /i "%~1"=="f" goto :intraday
if /i "%~1"=="r" goto :intraday
if /i "%~1"=="v" goto :intraday

rem número → define COUNT
if defined IS_NUMBER (
    set "COUNT=%~1"
    goto :intraday
)

rem comando custom
echo Executando comando custom: %*
call %* > "%DIR_TXT%\%FILE_TXT%"
goto :open

rem =========================
rem execução padrão (mt bars)
rem =========================
:intraday
echo Exportando intraday: "%DIR_TXT%\%FILE_TXT%"

call mt bars %SYMBOL% ^
    --period %PERIOD% ^
    --view %VIEW% ^
    --count %COUNT% ^
    --date %DAY% ^
    --volume %VOLUME% ^
    %SD% %NUM% > "%DIR_TXT%\%FILE_TXT%"

rem =========================
rem abrir arquivo
rem =========================
:open
start "" "%DIR_TXT%\%FILE_TXT%"
