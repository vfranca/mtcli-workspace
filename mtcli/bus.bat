@echo off
rem mtcli
rem calcula o número da barra no mercado americano
call mtcli
call %DIR_BIN%\bus %*
