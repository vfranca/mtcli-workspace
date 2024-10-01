@echo off
rem mtcli
rem converte JPY para USD
call mtcli
call %DIR_BIN%\jpy %*
