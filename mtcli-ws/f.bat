@echo off
rem mtcli
rem fechamento da barra atual
if /i "%1" == "/h" goto :help
if /i "%1" == "/c" goto :command

mt bars %SYMBOL% --view c --count 1 --period %PERIOD%

:command
echo mt bars %SYMBOL% --view c --count 1 --period %PERIOD%
goto :EOF

:help
echo fechamento da barra atual
goto :EOF
