@echo off
rem mtcli
set dotenvfile=C:/.env
if %id% == "" (
set intraday=desligado
) else (
set intraday=ligado
)
echo ativo=%t%
dotenv --file %dotenvfile% get DIGITS
echo periodo=%p%
echo intraday=%ano%.%mes%.%dia% %intraday%
echo risco=%r%
echo risco/retorno=%rr%
echo mt5=%mt5%
