@echo off
rem mtcli
rem converte EUR para USD
call mtcli
call %DIR_BIN%\eur %*
