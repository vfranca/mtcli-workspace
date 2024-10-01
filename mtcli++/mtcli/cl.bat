@echo off
rem mtcli
rem calcula o lote do trade
call mtcli
call %DIR_BIN%\cl %*
