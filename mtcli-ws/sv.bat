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
echo set tp=%TP% >>%fname%
echo set e=%E% >>%fname%
echo set pc=%PC% >>%fname%
echo set pv=%PV% >>%fname%

echo set sld=%SLD% >>%fname%
echo set mta=%MTA% >>%fname%
echo set lmt=%LMT% >>%fname%
echo set r=%R% >>%fname%
echo set rr=%RR% >>%fname%
echo set lot=%LOT% >>%fname%
echo set tam=%TAM% >>%fname%
echo set ala=%ALA% >>%fname%
echo set swc=%SWC% >>%fname%
echo set swv=%SWV% >>%fname%
echo set aj=%AJ% >>%fname%
echo set range=%range% >>%fname%
echo set vah=%VAH% >>%fname%
echo set val=%VAL% >>%fname%
echo set ibh=%IBH% >>%fname%
echo set ibl=%IBL% >>%fname%
echo set poc=%POC% >>%fname%
echo set block=%BLOCK% >>%fname%
echo set ib=%IB% >>%fname%
echo set periodos=%periodos% >>%fname%
echo set limit=%limit% >>%fname%
echo set vwap=%vwap% >>%fname%
echo set loss_limit=%loss_limit% >>%fname%
echo set tick_size=%tick_size% >>%fname%
echo set rows=%rows% >>%fname%

if /i not "%1" == "/q" (
echo as marcacoes foram salvas em %fname%
)
