@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem variáveis de ambiente
rem preço médio ponderado
if "%1" == "" (
echo %PMP%
goto :EOF
)
set pmp=%1
