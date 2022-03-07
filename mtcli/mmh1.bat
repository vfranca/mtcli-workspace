@echo off
mt bars %symbol% --view c --count 1 --period D1
mt mm %symbol% --period h1 --count 20
mt mm %symbol% --period D1 --count 20
