@echo off
rem mtcli
rem média móvel simples
set /p periodos=periodos:
sma %t% --period %p% --count %periodos%
