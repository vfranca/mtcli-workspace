@echo off
rem mtcli
rem calcula um contrato futuro
call mtcli
call %DIR_BIN%\mf %*
