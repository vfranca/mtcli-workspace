"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
calcula a expectativa matemática do operacional
"""
import click


@click.command()
@click.argument("taxa_acerto", type=int)
@click.argument("ganho_medio", type=float)
@click.argument("perda_media", type=float)
def cli(taxa_acerto, ganho_medio, perda_media):
	""" Calcula a expectativa matemática do operacional"""
	ta = taxa_acerto / 100
	expectativa = (ta * ganho_medio) - ((1 - ta) * perda_media)
	click.echo("%.2f/trade" % expectativa)
	return 0


if __name__ == "__main__":
	cli()
