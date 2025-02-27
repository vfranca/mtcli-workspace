@echo off
set fzip=mtcli-ws.zip
set dir=mtcli-ws
set dir_dist=%homepath%\cli\mtcli-ws\dist
cd %dir%
call zip -r %fzip% *.*
move %fzip% %dir_dist%\%fzip%
cd ..

