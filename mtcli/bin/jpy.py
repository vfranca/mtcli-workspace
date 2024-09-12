"""
Converte ien para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=145.00)
def jpy(preco, cambio):
    """Converte ien para dolar."""
    preco_usd = preco * (1 / cambio)
    click.echo("USD %.2f" % preco_usd)


if __name__ == "__main__":
    jpy()
