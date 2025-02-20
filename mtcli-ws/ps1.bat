@echo off
rem Copyright 2022 Valmir França da Silva
rem https://github.com/vfranca
rem
rem Altera o prompt de comando
if "%1" == "" (
prompt $$
goto :EOF
)
prompt $%1
