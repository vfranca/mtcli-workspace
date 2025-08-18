@echo off
rem define a quantidade de períodos default 20
if not "%1" == "" (
set periodos=%1
) else (
set periodos=20
)
rem define o tipo da média default ema
if not "%2" == "" (
set tipo=%2
) else (
set tipo=ema
)
mt mm %SYMBOL% --period %PERIOD% --periodos %periodos% --tipo %tipo%
