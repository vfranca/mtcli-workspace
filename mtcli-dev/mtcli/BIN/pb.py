"""
calcula níveis de pullback
"""

import click
import os


digits = os.getenv("DIGITOS")


@click.command()
@click.argument("end", type=float)
@click.argument("begin", type=float)
def lg(begin, end):
    """Calcula niveis de pullback"""
    leg = end - begin
    click.echo("%.{0}f".format(digits) % abs(leg))

    projecao = end + leg
    click.echo("%.{0}f MM".format(digits) % projecao)

    pullback1 = end - leg * 0.23
    pullback2 = end - leg * 0.33
    pullback3 = end - leg * 0.5
    pullback4 = end - leg * 0.62
    pullback5 = end - leg * 0.75

    click.echo("%.{0}f 23%%".format(digits) % pullback1)
    click.echo("%.{0}f 33%%".format(digits) % pullback2)
    click.echo("%.{0}f 50%%".format(digits) % pullback3)
    click.echo("%.{0}f 62%%".format(digits) % pullback4)
    click.echo("%.{0}f 75%%".format(digits) % pullback5)


if __name__ == "__main__":
    lg()
