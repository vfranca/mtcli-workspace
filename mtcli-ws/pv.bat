@echo off
rem mtcli
rem marcações
rem preço de venda
if "%1" == "" (
echo %PV%
goto :EOF
)
set pv=%1
