@echo off
call env SYMBOL %*
if not "%~2"=="" (call d %2)
call term