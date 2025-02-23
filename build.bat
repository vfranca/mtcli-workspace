@echo off
set fzip=mtcli-ws.zip
set dir=mtcli-ws
set dir_dist=dist
call zip -r %fzip% %dir%
move %fzip% %dir_dist%\%fzip%
