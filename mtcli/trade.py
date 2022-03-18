"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
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
	gain = (stop_default * retorno) / retorno
	alvo1 = 0
	alvo2 = 0
	alvo3 = 0
	if retorno == 1:
		alvo1 = entrada + gain
	if retorno == 2:
		alvo1 = entrada + gain
		alvo2 = entrada + gain * 2
	if retorno == 3:
		alvo1 = entrada + gain
		alvo2 = entrada + gain * 2
		alvo3 = entrada + gain * 3
	click.echo("%.2f stop loss" % stop_loss)
	click.echo("%.2f entrada" % entrada)
	if alvo1: click.echo("%.2f 1x" % alvo1)
	if alvo2: click.echo("%.2f 2x" % alvo2)
	if alvo3: click.echo("%.2f 3x" % alvo3)
	return 0


@click.command()
@click.argument("entrada", type=float)
@click.option("--stop-default", "-sd", type=float, default=stop_default)
@click.option("--retorno", "-r", type=float, default=retorno)
def venda(entrada, stop_default, retorno):
	"""Entrada, stop loss e alvo de uma venda."""
	stop_loss = entrada + stop_default
	gain = (stop_default * retorno) / retorno
	alvo1 = 0
	alvo2 = 0
	alvo3 = 0
	if retorno == 1:
		alvo1 = entrada - gain
	if retorno == 2:
		alvo1 = entrada - gain
		alvo2 = entrada - gain * 2
	if retorno == 3:
		alvo1 = entrada - gain
		alvo2 = entrada - gain * 2
		alvo3 = entrada - gain * 3
	click.echo("%.2f stop loss" % stop_loss)
	click.echo("%.2f entrada" % entrada)
	if alvo1: click.echo("%.2f 1x" % alvo1)
	if alvo2: click.echo("%.2f 2x" % alvo2)
	if alvo3: click.echo("%.2f 3x" % alvo3)
	return 0

cli.add_command(compra)
cli.add_command(venda)


if __name__ == "__main__":
	cli()
