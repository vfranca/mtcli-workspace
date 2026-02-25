@echo off
if not "%1" == "" (
@mt vap --show-rest --period M1 --limit %1
) else (
@mt vap --show-rest --period M1 --limit %LIMIT%
)
