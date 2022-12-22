"""
scripts python
Copyright 2022 Valmir França da Silva
"""
import MetaTrader5 as mt5
import click


# Conecta ao MetaTrader 5
if not mt5.initialize():
    exit("não foi possível conectar ao MetaTrader 5")


# Cria o comando ativo
@click.command()
def ativo():
    click.echo("ativo")


if __name__ == "__main__":
    ativo()

# Desconecta o MetaTrader 5
mt5.shutdown()
