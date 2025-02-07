@echo off
rem mtcli
rem marcações
rem measured movie up
if "%1" == "" (
echo MOV PROJ ACIMA %MMU%
goto :EOF
)
set mmu=%1
