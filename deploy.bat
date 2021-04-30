@echo off
set fzip=mtcli.zip
set dir=mtcli
call rar a %fzip% %dir%
move %fzip% "%HOMEPATH%\Google Drive\%fzip%"
