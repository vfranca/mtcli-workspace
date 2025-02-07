"""
Converte real para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=5.60)
def brl(preco, cambio):
    """Converte real para dolar."""
    usd = preco * (1/cambio)
    click.echo("%.2f USD" % usd)


if __name__ == "__main__":
    brl()
