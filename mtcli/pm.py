"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
calcula o preço médio
"""
import click


@click.command()
@click.argument("preco1", type=float)
@click.argument("preco2", type=float)
def cli(preco1, preco2):
	""" Calcula o preço médio"""
	medio = (preco1 + preco2) / 2
	click.echo("%.2f" % medio)


if __name__ == "__main__":
	cli()
