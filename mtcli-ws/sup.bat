@echo off
set fpath=%SYMBOL%
set fname=SUPORTES.txt
if not exist %fpath% (
mkdir %fpath%
)
if "%1" == "0" (
echo SUPORTES > %fpath%\%fname%
goto :eof
)
if not "%1" == "" (
echo %1 >> %fpath%\%fname%
) else (
type %fpath%\%fname%
)
