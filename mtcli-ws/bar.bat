@echo off
rem mtcli
rem atalho para comando
if /i "%1" == "/h" goto :help
if /i "%1" == "/c" goto :command

if "%1" == "" (
call q 500
call :grafico
) else (
call q %1
call :grafico
)
call term
goto :EOF

:grafico
mt bars %SYMBOL% --period %PERIOD% --view %VIEW% --date %DAY% --count %COUNT% %sd% %n%

:command
echo mt bars %SYMBOL% --period %PERIOD% --view %VIEW% --date %DAY% --count %COUNT% %sd% %n%
goto :EOF

:help
echo exibicao do %SYMBOL% no %PERIOD% no formato %VIEW%
goto :EOF
