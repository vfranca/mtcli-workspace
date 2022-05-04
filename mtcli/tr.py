"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
regiões de lateralidade
"""
import click


@click.command()
@click.argument("topo", type=float)
@click.argument("fundo", type=float)
@click.option("--digitos", "-d", default=2, help="Dígitos depois da vírgula")
def cli(topo, fundo, digitos):
	"""Exibe as regiões de uma lateralidade."""
	range = topo - fundo
	terco = range / 3
	terco_sup = topo - terco
	meio = (topo + fundo) / 2
	terco_inf = fundo + terco
	mm_alta = topo + range
	mm_baixa = fundo - range
	click.echo("%.2f" % range)
	click.echo("%.2f" % mm_alta)
	click.echo("%.2f" % topo)
	click.echo("%.2f" % terco_sup)
	click.echo("%.2f" % meio)
	click.echo("%.2f" % terco_inf)
	click.echo("%.2f" % fundo)
	click.echo("%.2f" % mm_baixa)


if __name__ == "__main__":
	cli()
