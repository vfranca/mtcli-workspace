"""
rem ferramentas de trading
rem Copyright 2021 Valmir França
operação de compra/venda
"""
import click


stop_default = 250
retorno = 2


@click.group()
def cli():
	pass


@click.command()
@click.argument("entrada", type=float)
@click.option("--stop-default", "-sd", type=float, default=stop_default)
@click.option("--retorno", "-r", type=float, default=retorno)
def compra(entrada, stop_default, retorno):
	"""Entrada, stop loss e alvo de uma compra."""
	stop_loss = entrada - stop_default
	stop_gain = stop_default * retorno
	alvo = entrada + stop_gain
	click.echo("%.2f entrada" % entrada)
	click.echo("%.2f stop loss" % stop_loss)
	click.echo("%.2f alvo" % alvo)
	return 0


@click.command()
@click.argument("entrada", type=float)
@click.option("--stop-default", "-sd", type=float, default=stop_default)
@click.option("--retorno", "-r", type=float, default=retorno)
def venda(entrada, stop_default, retorno):
	"""Entrada, stop loss e alvo de uma venda."""
	stop_loss = entrada + stop_default
	stop_gain = stop_default * retorno
	alvo = entrada - stop_gain
	click.echo("%.2f entrada" % entrada)
	click.echo("%.2f stop loss" % stop_loss)
	click.echo("%.2f alvo" % alvo)
	return 0

cli.add_command(compra)
cli.add_command(venda)


if __name__ == "__main__":
	cli()
