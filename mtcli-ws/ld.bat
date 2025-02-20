@echo off
set fname=%SYMBOL%.bat
if exist %fname% (
call %fname%
echo as marcacoes foram carregadas de %fname%
) else (
echo %fname% nao foi encontrado
)
