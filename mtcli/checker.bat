@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem versão do python instalado
python --version
rem versão do pip instalado
pip --version
rem versão do mtcli instalado
mt --version
rem exibe o conteúdo do arquivo de variáveis
type .mtcli
rem usuário logado
echo %username%
rem exibe o caminho da  pasta atual
cd
