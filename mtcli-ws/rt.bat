@echo off
call mtcli

set ancorar=--ancorar-abertura
set numerar=--numerar
set filename=range-%y%-%m%-%i%.txt

if "%1" == "" (
@mt range %ancorar% %numerar% --range-size %brick% --timeframe %period% > %dir_txt%\%filename%
) else (
@mt range %ancorar% %numerar% --range-size %brick% --timeframe %period% --bars %1 > %dir_txt%\%filename%
)

start %dir_txt%\%filename%
