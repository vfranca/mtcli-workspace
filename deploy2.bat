@echo off
set fzip=mtcli-deprecated.zip
set dir=mtcli-deprecated
call rar a %fzip% %dir%
move %fzip% "%HOMEPATH%\Google Drive\%fzip%"
