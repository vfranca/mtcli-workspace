@echo off
mt bars %symbol% --period m5 --view c --count 1
mt ma %symbol% --period m5 --count 20
mt ma %symbol% --period m5 --count 220
