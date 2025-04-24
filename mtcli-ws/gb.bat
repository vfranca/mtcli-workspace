@echo off
rem GABARITO DE PRICE ACTION
if not exist GB (
mkdir GB
)
set gabarito=GB\GABARITO-%SYMBOL%-%Y%-%M%-%I%.txt
if "%1" == "0" (
echo GABARITO %SYMBOL% %I% %M% %Y%>%gabarito%
goto :EOF
)
rem exibe o conteúdo do gabarito do dia
if "%1" == "" (
type %gabarito%
goto :EOF
)
rem lista os gabaritos salvos
if /i "%1" == "l" (
dir/b gb
goto :EOF
)
rem registra um conteúdo
echo "%*" >>%gabarito%
