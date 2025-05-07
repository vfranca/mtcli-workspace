@echo off
set fpath=%SYMBOL%
set fname=RESISTENCIAS.txt
if not exist %fpath% (
mkdir %fpath%
)
if "%1" == "0" (
echo RESISTENCIAS > %fpath%\%fname%
goto :eof
)
if not "%1" == "" (
echo %1 >> %fpath%\%fname%
) else (
type %fpath%\%fname%
)
