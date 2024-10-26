import click
from os import getenv

d = getenv("DIGITOS")


@click.command()
@click.argument("tg", envvar="TG", type=float)
@click.argument("e", envvar="E", type=float)
def tgx(tg, e):
    """Calcula o alvo"""
    retorno = abs(tg - e)
    click.echo("%.{0}f".format(d) % retorno)


if __name__ == "__main__":
    tgx()
