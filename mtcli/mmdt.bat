@echo off
mt bars %symbol% --view c --count 1 --period %p%
mt mm %symbol% -p M10 -c 20
mt mm %symbol% -p M10 -c 120
