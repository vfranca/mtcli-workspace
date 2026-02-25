@echo off
if "%1" == "" (
mt vwp --limit 0 --anchor abertura
) else (
mt vwp --limit %1
)
