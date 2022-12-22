"""
scripts python
Copyright 2022 Valmir França da Silva
"""
import MetaTrader5 as mt5
import click

## Importa os subcomandos
# from info import info
from conta import conta
from ativos import ativos
from ativo import ativo
# from historico import historico


# Conecta ao MetaTrader 5
if not mt5.initialize():
    exit("nao foi possivel conectar ao MetaTrader 5")


# Cria o grupo de comandos mt5
@click.group()
def cli():
    """Faz  interação com o MetaTrader 5"""
    pass


# Adiciona os subcomandos
# cli.add_command(info)
cli.add_command(conta)
cli.add_command(ativos)
cli.add_command(ativo)


if __name__ == "__main__":
    cli()

# Desconecta o MetaTrader 5
mt5.shutdown()
