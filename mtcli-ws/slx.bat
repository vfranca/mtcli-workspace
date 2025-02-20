@echo off
rem mtcli
rem calcula o stop loss do trade
call mtcli
call %DIR_BIN%\slx %*
