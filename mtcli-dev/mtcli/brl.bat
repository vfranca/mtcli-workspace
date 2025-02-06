@echo off
rem mtcli
rem converte BRL para USD
call mtcli
call %DIR_BIN%\brl %*
