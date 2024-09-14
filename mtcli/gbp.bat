@echo off
rem mtcli
rem converte GBP para USD
call mtcli
call %DIR_BIN%\gbp %*
