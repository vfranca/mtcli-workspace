@echo off
rem mtcli
rem calcula parâmetros do plano de trade
call mtcli
call %DIR_BIN%\pt %*
