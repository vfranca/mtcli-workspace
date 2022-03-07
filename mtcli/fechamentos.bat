@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
set defaultview=c
set defaultcount=108
set defaultma=20
cls
mt bars %symbol% --period %p% --date %id% --view %defaultview% --count %defaultcount%
mt mm %symbol% --period %p% --count %defaultma%
