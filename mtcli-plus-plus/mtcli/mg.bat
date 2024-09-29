@echo off
rem mtcli
rem calcula margem de garantia
call mtcli
call %DIR_BIN%\mg %*
