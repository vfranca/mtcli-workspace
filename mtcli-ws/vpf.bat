@echo off
set cmd=%1
if "%cmd%" == "" (
set window=566
) else (
set window=%cmd%
)
mt volume --symbol %symbol% --periods %window% --step %step% %2
