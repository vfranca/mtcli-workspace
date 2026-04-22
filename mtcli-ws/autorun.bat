@echo off

rem ==========================================
rem BOOTSTRAP MTCLI ENV
rem ==========================================

rem ---- evitar execucao duplicada ----
if defined WS_STARTED goto :EOF
set WS_STARTED=1

rem ---- modo debug ----
if defined MTCLIDEBUG (
    echo [DEBUG] Iniciando bootstrap...
)

rem ---- detectar WORKSPACE automaticamente ----
if not defined MTCLIPATH (
    set "MTCLIPATH=%CD%"
    if defined MTCLIDEBUG echo [DEBUG] WS nao definido. Usando padrao: %MTCLIPATH%
)

rem ---- validar diretorio ----
if not exist "%MTCLIPATH%" (
    echo [ERRO] Diretorio WS nao encontrado:
    echo %MTCLIPATH%
    goto :EOF
)

cd /d "%MTCLIPATH%"

rem ---- log opcional ----
set "LOG_DIR=%MTCLIPATH%\logs"
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"

set "LOG_FILE=%LOG_DIR%\startup.log"

if defined MTCLIDEBUG (
    echo [%date% %time%] bootstrap iniciado >> "%LOG_FILE%"
)

rem ---- carregar aliases ----
if exist aliases.bat (
    if defined MTCLIDEBUG echo [DEBUG] Carregando aliases...
    call aliases.bat
) else (
    echo [WARN] aliases.bat nao encontrado
)

rem ---- carregar perfil ----
where lpp >nul 2>&1
if %errorlevel%==0 (
    if defined MTCLIDEBUG echo [DEBUG] Executando lpp...
    call lpp 1
) else (
    if defined MTCLIDEBUG echo [DEBUG] lpp nao encontrado
)

rem ---- iniciar risco (seguro) ----
where mt >nul 2>&1
if %errorlevel%==0 (
    if defined MTCLIDEBUG echo [DEBUG] Iniciando mt risco...
    mt risco start
) else (
    echo [WARN] comando mt nao encontrado
)

if defined MTCLIDEBUG (
    echo [DEBUG] Bootstrap finalizado.
)

call term
