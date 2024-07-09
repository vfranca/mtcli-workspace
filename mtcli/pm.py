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
@click.argument("e1", type=float, envvar="e1")
@click.argument("e2", type=float, envvar="e2")
@click.argument("e3", type=float, envvar="e3")
@click.argument("e4", type=float, envvar="e4")
def cli(e1, e2, e3, e4):
    """Calcula o preço médio"""
    medio = (e1 + e2) / 2
    if e3: medio = (e1 + e2 + e3)/3
    if e4: medio = (e1 + e2 + e3 + e4)/4
    click.echo("%.{0}f".format(d) % medio)


if __name__ == "__main__":
    cli()
