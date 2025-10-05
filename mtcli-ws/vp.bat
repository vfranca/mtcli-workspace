@echo off
if "%1" == "" (
mt volume
) else (
mt volume -p %1 %2
)
