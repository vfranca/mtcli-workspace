import click
from os import getenv

d = getenv("DIGITOS")


@click.command()
@click.argument("sl", envvar="SL", type=float)
@click.argument("E", envvar="e", type=float)
def slx(sl, e):
    """Calcula o stop loss"""
    risco = abs(sl - e)
    click.echo("%.{0}f".format(d) % risco)


if __name__ == "__main__":
    slx()
