@echo off
if not "%1" == "" (
@mt market --timeframe M1 --bars %1
) else (
@mt market --timeframe M1 --bars 566
)
