@echo off
rem Valmir França vfranca3@gmail.com
rem atalho para pm.py

rem exibe as entradas
if "%1" == "x" (
goto :EXIBE
)
if "%1" == "X" (
goto :EXIBE
)

rem zera as entradas
if "%1" == "0" (
set e1=0
set e2=0
set e3=0
set e4=0
set e5=0
goto :EOF
)

rem entrada 1
if "%1" neq "" (
set e1=%1
)

rem entrada 2
if "%2" neq "" (
set e2=%2
)

rem entrada 3
if "%3" neq "" (
set e3=%3
)

rem entrada 4
if "%4" neq "" (
set e4=%4
)

rem entrada 5
if "%5" neq "" (
set e5=%5
)

rem calcula o preço médio
python pm.py %*
goto :EOF

:EXIBE
echo %E1%
echo %E2%
echo %E3%
echo %E4%
echo %E5%
goto :EOF
