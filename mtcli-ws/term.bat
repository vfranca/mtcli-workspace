@echo off
rem ==========================================
rem Configuração do terminal mtcli
rem ==========================================

rem Inicializa ambiente mtcli
call settings

rem Define título apenas se variáveis existirem
if defined SYMBOL if defined PERIOD (
    title %SYMBOL%-%PERIOD%
) else (
    title mtcli-terminal
)

rem Define prompt minimalista
prompt $$

rem Garante encoding consistente (UTF-8)
chcp 65001 >nul