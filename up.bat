@echo off
set fzip=mtcli.zip
set dirdest1="G:\Meu Drive"
set dirdest2=%HOMEPATH%
set dirdest3=%SYSTEMDRIVE%
copy %fzip% %dirdest1%\%fzip%
copy %fzip% %dirdest2%\%fzip%
copy %fzip% %dirdest3%\%fzip%

