@echo off
if /i "%PERIOD%" == "M5" (
call ma 120
) else (
call ma 100
)
call ma
call f
