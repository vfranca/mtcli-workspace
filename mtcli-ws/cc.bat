@echo off
if not "%1" == "" (
@mt buy --symbol %symbol% --lot %1 -sl %sl% -tp %tp%
) else (
@mt buy --symbol %symbol% --lot %lot% -sl %sl% -tp %tp%
)
