@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem medias moveis do 5min
mt bars %symbol% --period m5 --view c --count 1
mt ma %symbol% --period m5 --count 20
mt ma %symbol% --period m5 --count 200
