@echo off
rem mtcli
rem converte CAD para USD
call mtcli
call %DIR_BIN%\cad %*
