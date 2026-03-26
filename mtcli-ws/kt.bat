@echo off
setlocal

REM === CONFIG PADRÃO (fallback) ===
if "%brick%"=="" set brick=10
if "%period%"=="" set period=M1
if "%data_mode%"=="" set data_mode=tick
if "%dir_txt%"=="" set dir_txt=.

REM === DATA AUTOMÁTICA ===
for /f %%a in ('powershell -NoProfile -Command "Get-Date -Format yyyy"') do set y=%%a
for /f %%a in ('powershell -NoProfile -Command "Get-Date -Format MM"') do set m=%%a
for /f %%a in ('powershell -NoProfile -Command "Get-Date -Format dd-HHmmss"') do set i=%%a

REM === FLAGS ===
set ancorar=--ancorar-abertura
set numerar=

REM === ARQUIVO ===
set filename=renko-%brick%-%y%-%m%-%i%.txt

REM === COMANDO BASE ===
set cmd=mt rk --data-mode %data_mode% %ancorar% %numerar% --brick %brick% --timeframe %period%

REM === EXECUÇÃO ===
if "%1"=="" (
    %cmd% > "%dir_txt%\%filename%"
) else (
    %cmd% --bars %1 > "%dir_txt%\%filename%"
)

REM === ABRIR RESULTADO ===
start "" "%dir_txt%\%filename%"

endlocal