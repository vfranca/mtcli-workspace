"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
calcula breakeven do operacional
"""
import click


@click.command()
@click.argument("payoff", type=float)
def cli(payoff):
	""" Calcula o break even do operacional"""
	breakeven = 100 / (payoff + 1)
	click.echo("%.1f payoff" % payoff)
	click.echo("%i%% taxa de acerto do break even" % breakeven)
	return 0


if __name__ == "__main__":
	cli()


