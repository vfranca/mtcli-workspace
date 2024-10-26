@echo off
rem mtcli
rem calcula range e pullbacks da perna
call mtcli
call %DIR_BIN%\pb %*
