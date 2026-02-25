@echo off
if "%1" == "" (
@mt vwp --limit 0 --bands %bands%
) else (
@mt vwp --limit 0 --bands %1
)
