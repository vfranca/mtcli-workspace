@echo off
rem mtcli
rem Altera o MT5 do mtcli
set envDir=C:\
set envpath=C:/.env
if "%~1" == "" (
dotenv --file %envpath% get MT5
goto :EOF
)
set mt5=%1
set arquivoOrig="%envDir%.env-%mt5%"
set arquivoDest="%envDir%.env"
if exist %arquivoOrig% (
copy %arquivoOrig% %arquivoDest%
dotenv --file %envpath% set MT5 %mt5%
goto :EOF
) else (
echo corretora inexistente. Verifique o nome e tente novamente
goto :EOF
)
