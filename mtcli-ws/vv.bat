@echo off
if not "%1" == "" (
@mt sell --symbol %symbol% --lot %1 -sl %sl% -tp %tp%
) else (
@mt sell --symbol %symbol% --lot %lot% -sl %sl% -tp %tp%
)
