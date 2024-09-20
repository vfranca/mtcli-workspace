"""
Converte dolar de hong kong para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=7.79)
def hkd(preco, cambio):
    """Converte dolar de hong kong para dolar."""
    preco_usd = preco * (1 / cambio)
    click.echo("USD %.2f" % preco_usd)


if __name__ == "__main__":
    hkd()
