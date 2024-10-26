"""
Converte franco suisso para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=0.87)
def chf(preco, cambio):
    """Converte franco suisso para dolar."""
    preco_usd = preco * (1 / cambio)
    click.echo("USD %.2f" % preco_usd)


if __name__ == "__main__":
    chf()
