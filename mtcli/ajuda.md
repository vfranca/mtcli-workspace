# mtcli workspace


espaço de trabalho do mtcli contendo atalhos de comandos do mtcli e outros recursos extras para operações de day trade.   

## Dependências

Instale os pacotes python com os comandos abaixo:  

```CMD
pip install pa-trading  
pip install gr-trading  
pip install x-trading  
```

## atalhos
  
atalho | descrição | exemplo
:----- | :------ | :-----
m1 - m30, h1 - h4, d1, w1, mn1 | gráfico mínimo de 1 min ao mensal | m5 = mt bars winj24 -p m5 -v ch
mm1 - mm30, hh1 - hh4, dd1, ww1, mmn1 | gráfico completo de 1 min ao mensal | mm5 = mt bars winj24 -p m5 
m1r - m30r, h1r - h4r, d1r, w1r, mn1r | gráfico de ranges de 1 min ao mensal | m5r = mt bars winj24 -p m5 -v r
mm | média móvel simples de 20 períodos | mm = mt mm winj24 -p m5 -c 20
ma | média móvel exponencial de 20 períodos | ma = mt ma winj24 -p m5 -c 1
rm | range médio de 14 períodos | rm = mt rm winj24 -p m5

 

## marcações

marcação | descrição
:----: | :----:
s| symbol
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
pb | exibe recuos de 33%, 50% e de 66%
pba | exibe recuos de alta de 33%, 50% e de 66%
pbb | exibe recuos de 33%, 50% e de 66%
p2  | exibe movimento projetado de perna 1 = perna 2
p2a  | exibe movimento projetado de alta de perna 1 = perna 2
p2b  | exibe movimento projetado de baixa de perna 1 = perna 2
tr | exibe preços de uma lateralidade
trx | exibe preços de uma lateralidade



