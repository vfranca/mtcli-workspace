"""
Converte dolar canadense para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=1.34)
def cad(preco, cambio):
    """Converte dolar canadense para dolar."""
    usd = preco * (1 / cambio)
    click.echo("%.2f USD" % usd)


if __name__ == "__main__":
    cad()
