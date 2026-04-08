@echo off

set "MTCLIPATH="
set "MTCLIDEBUG="

reg delete "HKCU\Software\Microsoft\Command Processor" /v AutoRun /f

echo [OK] AutoRun removido.