"""
Calcula variações percentuais
"""
import click
from os import getenv


digitos = getenv("DIGITOS")


@click.group()
def cli():
    """Calcula variações percentuais"""
    pass


@click.command()
@click.argument("preco", type=float)
@click.option("--percentual", "-p", type=float, default=1)
@click.option("--niveis", "-n", type=int, default=2)
def n(preco, percentual, niveis):
    """Exibe níveis de variação percentual do preço"""
    # Exibe os niveis percentuais positivos
    for i in range(niveis).__reversed__():
        i += 1
        niveis_positivos = preco * (1 + (percentual * i) / 100)
        click.echo("%.{0}f".format(digitos) % niveis_positivos)
    # Exibe o preco de referencia
    click.echo("%.{0}f".format(digitos) % preco)
    # Exibe os niveis percentuais negativos
    for i in range(niveis):
        i += 1
        niveis_negativos = preco * (-1 + (percentual * i) / 100)
        click.echo("%.{0}f".format(digitos) % abs(niveis_negativos))


@click.command()
@click.argument("variacao", type=float)
@click.argument("preco", type=float)
def v(variacao, preco):
    """Calcula a variação percentual do preço"""
    var_percentual = variacao / preco * 100
    click.echo("%.2f%%" % var_percentual)


@click.command()
@click.argument("p1", type=float)
@click.argument("p2", type=float)
def p(p1, p2):
    "Calcula a variação percentual entre dois preços"""
    vp = (p2 - p1) / p1 * 100
    click.echo("%.1f%%" % vp)


cli.add_command(n)
cli.add_command(p)
cli.add_command(v)


if __name__ == "__main__":
    cli()
