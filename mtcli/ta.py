"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
taxa de acerto do operacional
"""
import click


@click.command()
@click.argument("acertos", type=int)
@click.argument("erros", type=int)
def cli(acertos, erros):
	"""Taxa de acertodo operacional"""
	trades = acertos + erros
	taxa_acerto = acertos / trades * 100
	click.echo("%i acertos" % acertos)
	click.echo("%i erros" % erros)
	click.echo("%i%% taxa de acerto" % taxa_acerto)
	return 0


if __name__ == "__main__":
	cli()
