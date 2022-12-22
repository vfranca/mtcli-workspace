"""
scripts python
Copyright 2022 Valmir França da Silva
"""
import MetaTrader5 as mt5
import click


# Conecta ao MetaTrader 5
if not mt5.initialize():
    exit("não foi possível conectar ao MetaTrader 5")


# Cria o comando ativos
@click.command()
@click.argument("search", required=False)
def ativos(search):
    if search:
        symbols = mt5.symbols_get(group=search + "*")
    else:
        symbols = mt5.symbols_get()
    for s in symbols:
        click.echo(s.name)
    click.echo("%i ativos" % len(symbols))


if __name__ == "__main__":
    ativos()

# Desconecta o MetaTrader 5
mt5.shutdown()
