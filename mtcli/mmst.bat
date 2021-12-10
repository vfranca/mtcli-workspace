@echo off
mt bars %symbol% -v c -c 1
mt mm %symbol% -p daily -c 20
mt mm %symbol% -p daily -c 100
