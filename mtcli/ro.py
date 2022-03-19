"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
range operacional
"""
import click


@click.command()
@click.argument("range_medio", type=float)
@click.argument("max", type=float)
@click.argument("min", type=float)
def cli(range_medio, max, min):
	"""Estima máxima e mínima do range operável"""
	range_atual = max - min
	range_restante = range_medio - range_atual
	max_projetada = max + range_restante
	min_projetada = min - range_restante
	click.echo("%.2f max" % max_projetada)
	click.echo("%.2f min" % min_projetada)
	click.echo("%.2f range restante" % range_restante)


if __name__ == "__main__":
	cli()
