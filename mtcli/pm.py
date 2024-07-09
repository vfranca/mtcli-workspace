"""
mtcli
Copyright 2021 Valmir França da Silva
ferramentas de trading
calcula o preço médio
"""
import click
from os import getenv

d = getenv("DIGITOS")


@click.command()
@click.argument("preco1", type=float, envvar="e1")
@click.argument("preco2", type=float, envvar="e2")
def cli(preco1, preco2):
    """Calcula o preço médio"""
    medio = (preco1 + preco2) / 2
    click.echo("%.{0}f".format(d) % medio)


if __name__ == "__main__":
    cli()
