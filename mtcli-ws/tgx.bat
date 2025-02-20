@echo off
rem mtcli
rem calcula o target do trade
call mtcli
call %DIR_BIN%\tgx %*
