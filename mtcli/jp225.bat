@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem configuração de ativo
set prefix=JP225
set /p sufix=contrato:
set sufix=-%sufix%
set digits=0
call perfil
