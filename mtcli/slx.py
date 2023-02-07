import click
from os import getenv

d = getenv("DIGITOS")


@click.command()
@click.argument("sl", envvar="sl", type=float)
@click.argument("e", envvar="e", type=float)
def slx(sl, e):
    risco = abs(sl - e)
    click.echo("%.{0}f".format(d) % risco)


if __name__ == "__main__":
    slx()
