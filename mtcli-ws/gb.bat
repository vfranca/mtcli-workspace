@echo off
rem GABARITO DE PRICE ACTION
if not exist GB (
mkdir GB
)
set gabarito=GB\GABARITO-%Y%-%M%-%I%.txt
if "%1" == "0" (
echo GABARITO %SYMBOL% %I% %M% %Y%>%gabarito%
goto :EOF
)
if "%1" == "" (
type %gabarito%
goto :EOF
)
echo %*>>%gabarito%
