@echo off
REM marcação limite de cotações
set cmd=%1
if "%cmd%" == "" (
	echo %criterio_hvn%
) else (
	set criterio_hvn=%cmd%
)
