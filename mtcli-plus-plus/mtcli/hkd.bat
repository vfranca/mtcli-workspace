@echo off
rem mtcli
rem converte HKD para USD
call mtcli
call %DIR_BIN%\hkd %*
