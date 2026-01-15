@echo off
if not "%1" == "" (
mt th --date %y%-%m%-%1
) else (
mt th --date %y%-%m%-%i%
)
