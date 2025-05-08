@echo off
set fname=tmp\%SYMBOL%.bat
echo @echo off>%fname%
echo set coy=%COY% >>%fname%
echo set ood=%OOD% >>%fname%
echo set hoy=%HOY% >>%fname%
echo set loy=%LOY% >>%fname%
echo set how=%HOW% >>%fname%
echo set low=%LOW% >>%fname%
echo set cow=%COW% >>%fname%

echo set h=%H% >>%fname%
echo set l=%L% >>%fname%
echo set sz=%SZ% >>%fname%
echo set bz=%BZ% >>%fname%
echo set mmu=%MMU% >>%fname%
echo set mmd=%MMD% >>%fname%

echo set mga=%MGA% >>%fname%
echo set mgb=%MGB% >>%fname%

echo set gxh=%GXH% >>%fname%
echo set gxl=%GXL% >>%fname%

echo set t1=%T1% >>%fname%
echo set t2=%T2% >>%fname%
echo set f1=%F1% >>%fname%
echo set f2=%F2% >>%fname%
echo set tl=%TL% >>%fname%
echo set tcl=%TCL% >>%fname%

echo set tg=%TG% >>%fname%
echo set sl=%SL% >>%fname%
echo set e=%E% >>%fname%

echo set sld=%SLD% >>%fname%
echo set mta=%MTA% >>%fname%
echo set lmt=%LMT% >>%fname%
echo set sp=%SP% >>%fname%
echo set rr=%RR% >>%fname%
echo set lot=%LOT% >>%fname%
echo set tam=%TAM% >>%fname%
echo set ala=%ALA% >>%fname%
echo set swc=%SWC% >>%fname%
echo set swv=%SWV% >>%fname%

if /i not "%1" == "/q" (
echo as marcacoes foram salvas em %fname%
)
