@echo off
rem mtcli
rem calcula um cfd
call mtcli
call %DIR_BIN%\cfd %*
