@echo off
rem mtcli
rem intraday
call mtcli
if "%1" == "" goto :show

if /i "%1" == "on" goto :activate
if %1 == 1 goto :activate

if /i "%1" == "off" goto :deactivate
if %1 == 0 goto :deactivate

:activate
rem set intraday=%Y%-%M%-%I%
call day %Y%-%M%-%I%
goto :EOF

:deactivate
set day=
goto :EOF

:show
if not defined day (
echo intraday desativado
) else (
echo intraday ativado
)
goto:EOF

