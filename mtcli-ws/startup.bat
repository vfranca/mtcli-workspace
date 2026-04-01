@echo off

rem ==========================================
rem BOOTSTRAP MTCLI / B3 ENV
rem ==========================================

rem ---- evitar execucao duplicada ----
if defined B3_STARTED goto :EOF
set B3_STARTED=1

rem ---- modo debug ----
if defined B3_DEBUG (
    echo [DEBUG] Iniciando bootstrap...
)

rem ---- detectar B3 automaticamente ----
if not defined B3 (
    set "B3=%USERPROFILE%\b3"
    if defined B3_DEBUG echo [DEBUG] B3 nao definido. Usando padrao: %B3%
)

rem ---- validar diretorio ----
if not exist "%B3%" (
    echo [ERRO] Diretorio B3 nao encontrado:
    echo %B3%
    goto :EOF
)

cd /d "%B3%"

rem ---- log opcional ----
set "LOG_DIR=%B3%\logs"
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"

set "LOG_FILE=%LOG_DIR%\startup.log"

if defined B3_DEBUG (
    echo [%date% %time%] bootstrap iniciado >> "%LOG_FILE%"
)

rem ---- carregar aliases ----
if exist aliases.bat (
    if defined B3_DEBUG echo [DEBUG] Carregando aliases...
    call aliases.bat
) else (
    echo [WARN] aliases.bat nao encontrado
)

rem ---- carregar perfil ----
where lpp >nul 2>&1
if %errorlevel%==0 (
    if defined B3_DEBUG echo [DEBUG] Executando lpp...
    call lpp 1
) else (
    if defined B3_DEBUG echo [DEBUG] lpp nao encontrado
)

rem ---- iniciar risco (seguro) ----
where mt >nul 2>&1
if %errorlevel%==0 (
    if defined B3_DEBUG echo [DEBUG] Iniciando mt risco...
    mt risco start
) else (
    echo [WARN] comando mt nao encontrado
)

if defined B3_DEBUG (
    echo [DEBUG] Bootstrap finalizado.
)