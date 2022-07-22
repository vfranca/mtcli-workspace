@echo off
set fname=%SYMBOL%.txt
echo resistencias > %fname%
echo %r1% r1 >> %fname%
echo %r2% r2 >> %fname%
echo %r3% r3 >> %fname%
echo suportes >> %fname%
echo %s1% s1 >> %fname%
echo %s2% s2 >> %fname%
echo %s3% s3 >> %fname%
echo %lta% LTA >> %fname%
echo %ltb% LTB >> %fname%
echo range medio do dia >> %fname%
call rm >> %fname%
echo %hoy% hoy >> %fname%
echo %loy% loy >> %fname%
echo %coy% coy >> %fname%
echo %topo% topo >> %fname%
echo %fundo% fundo >> %fname%
echo %pbk% pullback >> %fname%
echo %r% risco >> %fname%
echo %rr% retorno >> %fname%
echo medias do diario >> %fname%
call mmst >> %fname%






