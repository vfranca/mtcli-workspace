@echo off
setlocal enableextensions

REM =========================
REM WORKSPACE DEFAULTS
REM =========================

set "MTCLIPATH=%CD%"
set "PATH_WS_LOGS=%MTCLIPATH%\logs"

if not defined SYMBOL set SYMBOL=IBOV
if not defined DIGITOS set DIGITOS=0
if not defined PERIOD set PERIOD=D1
if not defined VIEW set VIEW=ch
if not defined COUNT set COUNT=600
if not defined LIMIT set LIMIT=600
if not defined VOLUME set VOLUME=tick
if not defined BY set BY=tick

if not defined MOEDA set MOEDA=BRL
if not defined ALA set ALA=1
if not defined TAM set TAM=1
if not defined SPD set SPD=0
if not defined LOT set LOT=1

if not defined R set R=200
if not defined RR set RR=3
if not defined SL set SL=150
if not defined TP set TP=1500
if not defined MTA set MTA=9
if not defined LMT set LMT=-3
if not defined SLD set SLD=0

REM =========================
REM DATA DINÂMICA (fallback)
REM =========================

if not defined Y (
    for /f %%a in ('powershell -NoProfile -Command "Get-Date -Format yyyy"') do set Y=%%a
)

if not defined M (
    for /f %%a in ('powershell -NoProfile -Command "Get-Date -Format MM"') do set M=%%a
)

if not defined I (
    for /f %%a in ('powershell -NoProfile -Command "Get-Date -Format dd"') do set I=%%a
)

if not defined DAY set DAY=

REM =========================
REM DIRETÓRIOS
REM =========================

set "DIR_TXT=%APPDATA%\mtcli\TX\%SYMBOL%"
set "DIR_EXP=%APPDATA%\mtcli\EX\%SYMBOL%"
set "DIR_PROFILES=profiles"
set "DIR_BIN=bin"

REM =========================
REM GARANTE DIRETÓRIOS
REM =========================

if not exist "%DIR_TXT%" mkdir "%DIR_TXT%"
if not exist "%DIR_EXP%" mkdir "%DIR_EXP%"

endlocal & (
    REM Exporta variáveis para o chamador
    set SYMBOL=%SYMBOL%
    set DIGITOS=%DIGITOS%
    set PERIOD=%PERIOD%
    set VIEW=%VIEW%
    set COUNT=%COUNT%
    set LIMIT=%LIMIT%
    set VOLUME=%VOLUME%
    set BY=%BY%

    set MOEDA=%MOEDA%
    set ALA=%ALA%
    set TAM=%TAM%
    set SPREAD=%SPREAD%
    set LOT=%LOT%

    set R=%R%
    set RR=%RR%
    set SL=%SL%
    set TP=%TP%
    set MTA=%MTA%
    set LMT=%LMT%
    set SLD=%SLD%

    set Y=%Y%
    set M=%M%
    set I=%I%
    set DAY=%DAY%

    set MTCLIPATH=%MTCLIPATH%
    set PATH_WS_LOGS=%PATH_WS_LOGS%
    set DIR_TXT=%DIR_TXT%
    set DIR_EXP=%DIR_EXP%
    set DIR_PROFILES=%DIR_PROFILES%
    set DIR_BIN=%DIR_BIN%
)
