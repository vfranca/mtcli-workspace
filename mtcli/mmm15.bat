@echo off
mt bars %symbol% --view c --count 1 --period D1
mt mm %symbol% --period m15 --count 20
mt mm %symbol% --period m15 --count 80
