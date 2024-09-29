@echo off
set fzip=mtcli.zip
set dir=mtcli
set dirdest1="G:\Meu Drive"
set dirdest2=%HOMEPATH%
set dirdest3=%SYSTEMDRIVE%
call rar a %fzip% %dir%
copy %fzip% %dirdest1%\%fzip%
copy %fzip% %dirdest2%\%fzip%
copy %fzip% %dirdest3%\%fzip%
del %fzip%

