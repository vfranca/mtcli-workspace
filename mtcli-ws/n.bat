@echo off
rem mtcli
rem ativa o numerador de barras
if "%1" == "1" (
set num=-n
echo numerador ativado
goto :EOF
)
if "%1" == "0" (
set num=
echo numerador desativado
goto :EOF
)
if defined num (
echo numerador ativado
) else (
echo numerador desativado
)

