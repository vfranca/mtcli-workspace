@echo off
rem mtcli
rem ativa a data nas barras
if "%1" == "1" (
set sd=-sd
echo data ativada
goto :EOF
)
if "%1" == "0" (
set sd=
echo data desativada
goto :EOF
)
if defined sd (
echo data ativada
) else (
echo data desativada
)

