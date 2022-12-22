"""
scripts python
Copyright 2022 Valmir França da Silva
"""
import MetaTrader5 as mt5
import click


# Conecta ao MetaTrader 5
if not mt5.initialize():
    exit("nao foi possivel conectar ao MetaTrader 5")


# Cria o comando conta
@click.command()
def conta():
    # Obtém os dados da conta
    info = mt5.account_info()
    # Imprime os dados da conta
    click.echo("corretora %s" % info.company)
    click.echo("usuario %s" % info.login)
    click.echo("servidor %s" % info.server)
    click.echo("saldo %.2f" % info.balance)
    click.echo("lucro %.2f" % info.profit)
    click.echo("margem alocada %.2f" % info.equity)
    click.echo("margem usada %.2f" % info.margin)
    click.echo("margem livre %.2f" % info.margin_free)


if __name__ == "__main__":
    conta()

# Desconecta o MetaTrader 5
mt5.shutdown()
