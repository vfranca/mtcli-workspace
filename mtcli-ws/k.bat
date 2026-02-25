@echo off
set tf=%period%
if "%1" == "" (
@mt renko --data-mode %renko% --ancorar-abertura --brick %brick% --timeframe %tf% --bars 0
) else (
@mt renko --data-mode %renko% --ancorar-abertura --brick %brick% --timeframe %tf% --bars %1
)
