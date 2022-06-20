@echo off
set fname=%SYMBOL%.txt
echo resistencias > %fname%
call rx >> %fname%
echo suportes >> %fname%
call sx >> %fname%
echo LTA >> %fname%
call lta >> %fname%
echo LCA >> %fname%
call lCa >> %fname%
echo LTB >> %fname%
call ltb >> %fname%
echo LCB >> %fname%
call lcb >> %fname%
