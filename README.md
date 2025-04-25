# mtcli workspace


Área de trabalho do mtcli contendo atalhos de comandos do mtcli e outros recursos extras para operações de day trade.   

## atalhos de comandos
  
atalho | descrição | exemplo
:----- | :------ | :-----
m1 - m30, h1 - h4, h6, h8 h12, d1, w1, mn1 | gráfico mínimo | m5 = mt bars winj24 -p m5 -v ch
mm1 - mm30, hh1 - hh4, hh6, hh8, hh12, dd1, ww1, mmn1 | gráfico completo | mm5 = mt bars winj24 -p m5 -v f 
m1r - m30r, h1r - h4r, h6r, h8r, h12r , d1r, w1r, mn1r | gráfico de ranges | m5r = mt bars winj24 -p m5 -v r
mm | média móvel simples de 20 períodos | mm = mt mm winj24 -p m5 -c 20
rm | range médio de 10 períodos | rm = mt rm winj24 -p m5

## marcações

marcação | descrição
:----: | :----:
s| ativo
d | digitos
p | período
i | dia
m | mes
y | ano
tcl | linha de canal
tl | linha de tendencia
hoy | maxima de ontem
loy | minima de ontem
ood| abertura do dia
coy | fechamento de ontem
h | maxima
l | minima
pk | pullback


## comandos extras

comando | descrição 
:---- | :------
ls | exibe preço da linha superior de canal
li | exibe preço da linha inferior de canal
ln | exibe preço de linha de canal
bo | exibe recuos de 33%, 50% e de 66%
ra | exibe recuos de alta de 33%, 50% e de 66%
rb | exibe recuos de 33%, 50% e de 66%
tr | exibe preços de uma lateralidade
trx | exibe preços de uma lateralidade



