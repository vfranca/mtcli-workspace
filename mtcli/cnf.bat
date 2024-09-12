@echo off
rem mtcli
echo CODIGO %SYMBOL%
echo DIGITOS %DIGITOS%
echo PERIODO %PERIOD%
echo GRAFICO %VIEW%
echo BARRAS %COUNT%
echo DATA %Y%.%M%.%I%
echo RISCO %R%
echo RISCO/RETORNO %RR%
echo LOTE %LOT%
echo ALAVANCAGEM %ALA%
echo TAMANHO %TAM%
echo MOEDA %MOEDA%
echo SALDO %SLD%
echo META %MTA%
echo LIMITE %LMT%
echo risco
CALL RX
echo margem
CALL MGX
