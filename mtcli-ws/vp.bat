@echo off
if not "%1" == "" (
@mt vp --period M1 --periodos %1
) else (
@mt vp --period M1 --periodos 566
)
