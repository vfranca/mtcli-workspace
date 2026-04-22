@echo off
setlocal EnableDelayedExpansion

if "%SYMBOL%"=="" (
    echo SYMBOL nao definido
    exit /b 1
)

set "DIR=tmp"
set "FNAME=%DIR%\%SYMBOL%.bat"

if not exist "%DIR%" mkdir "%DIR%"

(
echo @echo off

call :save coy
call :save ood
call :save hoy
call :save loy
call :save how
call :save low
call :save cow

call :save h
call :save l
call :save sz
call :save bz
call :save mmu
call :save orh
call :save orl

call :save mmd

call :save mga
call :save mgb

call :save gxh
call :save gxl

call :save t1
call :save t2
call :save f1
call :save f2
call :save tl
call :save tcl

call :save tg
call :save sl
call :save tp
call :save e
call :save pc
call :save pv

call :save sld
call :save mta
call :save lmt
call :save r
call :save rr
call :save lot
call :save tam
call :save ala
call :save swc
call :save swv
call :save ajuste
call :save range
call :save vah
call :save val
call :save ibh
call :save ibl
call :save poc
call :save poc1
call :save poc2
call :save poc3

call :save oferta
call :save demanda

call :save block
call :save ib
call :save periodos
call :save limit
call :save vwap
call :save loss_limit
call :save tick_size
call :save rows
call :save brick
call :save data_mode
call :save max_ticks
call :save modo
call :save mtcli_log_per_process

) > "%FNAME%"

if /i not "%1"=="/q" (
    echo marcacoes salvas em %FNAME%
)

exit /b

:save
set "VAR=%~1"
call set "_VAL=%%%VAR%%%"
if defined _VAL (
    echo set %VAR%=!_VAL!
)
exit /b