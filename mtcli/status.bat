@echo off
rem mtcli
if %id% == "" (
set intraday=desligado
) else (
set intraday=ligado
)
echo ativo=%t%
echo periodo=%p%
echo intraday=%ano%.%mes%.%dia% %intraday%
echo risco=%r%
echo risco/retorno=%rr%
echo mt5=%mt5%
