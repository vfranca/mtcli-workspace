"""
Converte dolar de hong kong para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=7.79)
def hkd(preco, cambio):
    """Converte dolar de hong kong para dolar."""
    usd = preco * (1 / cambio)
    click.echo("%.2f USD" % usd)


if __name__ == "__main__":
    hkd()
