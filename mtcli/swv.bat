@echo off
rem mtcli
rem marcações
rem swap de venda
if "%1" == "" (
echo SWAP VENDA %SWV%
goto :EOF
)
set swv=%1
