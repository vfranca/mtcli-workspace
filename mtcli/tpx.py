import click
from os import getenv

d = getenv("DIGITOS")


@click.command()
@click.argument("tp", envvar="tp", type=float)
@click.argument("e", envvar="e", type=float)
def tpx(tp, e):
    retorno = abs(tp - e)
    click.echo("%.{0}f".format(d) % retorno)


if __name__ == "__main__":
    tpx()
