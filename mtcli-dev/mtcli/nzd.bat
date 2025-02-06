@echo off
rem mtcli
rem converte NZD para USD
call mtcli
call %DIR_BIN%\eur %*
