@echo off
rem mtcli
rem calcula uma venda
if "%1" == "" (
if defined e (
op e --venda %E%
) else (
echo entrada indefinida
)
) else (
op e --venda %1
call e %1
)
