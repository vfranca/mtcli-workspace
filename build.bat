@echo off
set fzip=mtcli-ws.zip
set dir=mtcli-ws
set dir_dist=dist
rem set dirdest1="G:\Meu Drive"
rem set dirdest2=%HOMEPATH%
rem set dirdest3=%SYSTEMDRIVE%
call rar a %fzip% %dir%
move %fzip% %dir_dist%\%fzip%
rem copy %fzip% %dirdest2%\%fzip%
rem copy %fzip% %dirdest3%\%fzip%
rem del %fzip%

