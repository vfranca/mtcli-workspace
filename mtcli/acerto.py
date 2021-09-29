"""
Sistema  de trading
Taxa de acerto
"""
import click


@click.command()
@click.argument("acertos", type=int)
@click.argument("erros", type=int)
def cli(acertos, erros):
	"""Taxa de acerto."""
	trades = acertos + erros
	taxa_acerto = acertos / trades * 100
	click.echo("%i acertos" % acertos)
	click.echo("%i erros" % erros)
	click.echo("%i%% taxa de acerto" % taxa_acerto)
	return 0


if __name__ == "__main__":
	cli()
