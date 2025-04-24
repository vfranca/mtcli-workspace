@echo off
rem análise de price action
if not exist PA (
mkdir PA
)
set pa=PA\PA-%SYMBOL%-%Y%-%M%-%I%.txt
if "%1" == "0" (
echo PRICE ACTION %SYMBOL% %I% %M% %Y%>%pa%
goto :EOF
)
rem exibe o relatório do dia
if "%1" == "" (
type %pa%
goto :EOF
)
rem lista os relatórios
if /i "%1" == "l" (
dir/b pa
goto :EOF
)
rem registra um conteúdo
echo "%*" >>%pa%
