"""
Valmir França vfranca3@gmail.com
Calcula o preço médio do trade
"""
import click
from os import getenv

d = getenv("DIGITOS")


@click.command()
@click.argument("e1", type=float, envvar="e1")
@click.argument("e2", type=float, envvar="e2")
@click.argument("e3", type=float, envvar="e3")
@click.argument("e4", type=float, envvar="e4")
@click.argument("e5", type=float, envvar="E5")
def cli(e1, e2, e3, e4, e5):
    """Calcula o preço médio do trade"""
    medio = e1
    if e2: medio = (e1 + e2)/2
    if e3: medio = (e1 + e2 + e3)/3
    if e4: medio = (e1 + e2 + e3 + e4)/4
    if e5: medio = (e1 + e2 + e3 + e4 + e5)/5
    click.echo("%.{0}f".format(d) % medio)


if __name__ == "__main__":
    cli()
