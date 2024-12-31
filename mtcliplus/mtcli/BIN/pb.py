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
    pullback1 = end - leg * 0.33
    pullback2 = end - leg * 0.5
    pullback3 = end - leg * 0.66

    click.echo("%.{0}f".format(digits) % abs(leg))

    click.echo("recuos")
    click.echo("%.{0}f".format(digits) % pullback1)
    click.echo("%.{0}f".format(digits) % pullback2)
    click.echo("%.{0}f".format(digits) % pullback3)

    expansao1 = end + leg *0.33
    expansao2 = end + leg * 0.50
    expansao3 = end + leg *0.66
    expansao4 = end + leg * 1

    click.echo("expansoes")
    click.echo("%.{0}f".format(digits) % expansao1)
    click.echo("%.{0}f".format(digits) % expansao2)
    click.echo("%.{0}f".format(digits) % expansao3)
    click.echo("%.{0}f".format(digits) % expansao4)






if __name__ == "__main__":
    lg()
