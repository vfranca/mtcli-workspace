@echo off
rem mtcli
rem converte CHF para USD
call mtcli
call %DIR_BIN%\chf %*
