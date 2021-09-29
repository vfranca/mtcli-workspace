"""
Kit do trader
Risco efetivo
"""
import click


@click.command()
@click.argument("entrada", type=float)
@click.argument("loss", type=float)
@click.argument("cv")
def cli(entrada, loss, cv):
	"""Calcula o risco efetivo e projecoes."""
	risco_efetivo = abs(entrada - loss)
	if cv == "v":
		rr1 = entrada - risco_efetivo * 1
		rr2 = entrada - risco_efetivo * 2
	else:
		rr1 = entrada + risco_efetivo * 1
		rr2 = entrada + risco_efetivo * 2
	click.echo("%.2f risco efetivo" % risco_efetivo)
	click.echo("%.2f r/r=1" % rr1)
	click.echo("%.2f r/r=2" % rr2)


if __name__ == "__main__":
	cli()
