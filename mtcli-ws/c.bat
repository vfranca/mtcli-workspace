@echo off
rem mtcli
rem calcula uma compra
if "%1" == "" (
if defined e (
op e --compra %E%
) else (
echo entrada indefinida
)
) else (
op e --compra %1
call e %1
)
