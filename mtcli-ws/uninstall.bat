@echo off

reg delete "HKCU\Software\Microsoft\Command Processor" /v AutoRun /f

echo AutoRun removido com sucesso.