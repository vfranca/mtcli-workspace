@echo off
rem mtcli
rem range médio
set /p periodos=periodos:
mt rm %t% --period %p% --count %periodos%
