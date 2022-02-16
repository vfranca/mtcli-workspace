@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem Altera o MT5 do mtcli
set dotenvfile=%SystemDrive%/.env
if "%~1" == "" (
dotenv --file %dotenvfile% get MT5
goto :EOF
)
rem set mt5=%1
set fOrig="%SystemDrive%\.env-%1%"
set fDest="%SystemDrive%\.env"
if exist %fOrig% (
copy %fOrig% %fDest%
dotenv --file %dotenvfile% set MT5 %1
goto :EOF
) else (
echo corretora inexistente. Verifique o nome e tente novamente
goto :EOF
)
