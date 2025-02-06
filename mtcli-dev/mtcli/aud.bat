@echo off
rem mtcli
rem converte AUD para USD
call mtcli
call %DIR_BIN%\aud %*
