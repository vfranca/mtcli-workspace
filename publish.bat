@echo off
set fzip=mtcli-ws.zip
set dir_dist=%~dp0dist
set dirdest1="G:\Meu Drive"
set dirdest2=%HOMEPATH%
set dirdest3=%SYSTEMDRIVE%
copy %dir_dist%\%fzip% %dirdest1%\%fzip%
copy %dir_dist%\%fzip% %dirdest2%\%fzip%
copy %dir_dist%\%fzip% %dirdest3%\%fzip%
