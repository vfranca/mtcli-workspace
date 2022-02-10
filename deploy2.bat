@echo off
set fzip=mtcli_2.00.zip
set dir=mtcli_2.00
call rar a %fzip% %dir%
move %fzip% "%HOMEPATH%\Google Drive\%fzip%"
