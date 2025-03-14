@echo off
rem mtcli
rem ativa o numerador de barras
if "%1" == "1" (
set n=-n
echo numerador ativado
goto :EOF
)
if "%1" == "0" (
set n=
echo numerador desativado
goto :EOF
)
if defined n (
echo numerador ativado
) else (
echo numerador desativado
)

