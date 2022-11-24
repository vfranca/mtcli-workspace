import click


@click.command()
@click.argument("entrada", type=float)
@click.argument("stoploss", type=float)
@click.argument("stopgain", type=float)
def cli(entrada, stoploss, stopgain):
	risco = abs(entrada - stoploss)
	click.echo("%.2f risco" % risco)
	ganho = abs(stopgain - entrada)
	click.echo("%.2f ganho" % ganho)
	rr = ganho / risco
	click.echo("%.1f risco/retorno" % rr)


if __name__ == "__main__":
	cli()
