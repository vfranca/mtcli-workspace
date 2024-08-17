"""
Converte euro para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=1.10)
def eur(preco, cambio):
    """Converte euro para dolar."""
    preco_usd = preco * cambio
    click.echo("%.2f USD" % preco_usd)


if __name__ == "__main__":
    eur()
