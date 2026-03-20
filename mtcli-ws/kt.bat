@echo off
call mtcli

set ancorar=--ancorar-abertura
set numerar=
set filename=renko-%brick%-%y%-%m%-%i%.txt

if "%1" == "" (
@mt rk --data-mode %renko% %ancorar% %numerar% --brick %brick% --timeframe %period% > %dir_txt%\%filename%
) else (
@mt rk --data-mode %renko% %ancorar% %numerar% --brick %brick% --timeframe %period% --bars %1 > %dir_txt%\%filename%
)

start %dir_txt%\%filename%
