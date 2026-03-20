@echo off
set ancorar=--ancorar-abertura
set numerar=
if "%1" == "" (
@mt rk --data-mode %renko% %ancorar% --brick %brick% --timeframe %period% --bars 0 %numerar%
) else (
@mt rk --data-mode %renko% %ancorar% --brick %brick% --timeframe %period% --bars %1 %numerar%
)
