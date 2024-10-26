"""
Calcula range e pullbacks da perna
"""
import click
import os


digits = os.getenv("DIGITOS")


@click.command()
@click.argument("end", type=float)
@click.argument("begin", type=float)
def lg(begin, end):
    """Calcula range e pullbacks da perna"""
    leg = end - begin
    pullback1 = end - leg * 1 / 3
    pullback2 = end - leg * 1 / 2
    pullback3 = end - leg * 2 / 3
    click.echo("%.{0}f".format(digits) % abs(leg))
    click.echo("%.{0}f".format(digits) % pullback1)
    click.echo("%.{0}f".format(digits) % pullback2)
    click.echo("%.{0}f".format(digits) % pullback3)


if __name__ == "__main__":
    lg()
