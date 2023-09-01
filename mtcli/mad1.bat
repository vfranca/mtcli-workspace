@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem medias moveis do diario
mt bars %symbol% --period d1 --view c --count 1
mt ma %symbol% --period d1 --count 20
mt ma %symbol% --period d1 --count 100
