@echo off
rem mtcli
rem abertura
if not "%1" == "" (
mt bars %SYMBOL% --view o --count 1 --period %1
) else (
mt bars %SYMBOL% --view o --count 1 --period D1
)
