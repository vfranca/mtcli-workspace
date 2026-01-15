@echo off
if not "%1" == "" (
@mt mp --period M1 --limit %1
) else (
@mt mp --period M1 --limit %LIMIT%
)
