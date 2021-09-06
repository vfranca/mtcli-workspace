@echo off
rem mtcli
rem Altera o MT5 do mtcli
set envDir=C:\
rem set mt5="%1"
set /p mt5=corretora:
set arquivoOrig="%envDir%.env-%mt5%"
set arquivoDest="%envDir%.env"
if exist %arquivoOrig% (
copy %arquivoOrig% %arquivoDest%
echo mt5 %mt5% ativado
goto :EOF
) else (
echo corretora inexistente. Verifique o nome e tente novamente
goto :EOF
)
