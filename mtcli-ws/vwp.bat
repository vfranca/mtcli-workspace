@echo off
if "%1" == "" (
mt vwap -l %limit%
) else (
mt vwap -l %1
)
