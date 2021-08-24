@echo off
rem mtcli
rem média móvel simples
set /p periodos=periodos:
sma %symbol% --period %p% --count %periodos%
