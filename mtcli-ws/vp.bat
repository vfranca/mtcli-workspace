@echo off
if not "%1" == "" (
@mt volume --period M1 --bars %1
) else (
@mt volume --period M1 --bars 566
)
