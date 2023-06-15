@echo off
mt bars %symbol% --period d1 --view c --count 1
mt ma %symbol% --period d1 --count 20
mt ma %symbol% --period d1 --count 100
