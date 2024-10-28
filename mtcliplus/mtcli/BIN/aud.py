"""
Converte dólar australiano para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=0.69)
def aud(preco, cambio):
    """Converte dólar australiano para dolar."""
    usd = preco * cambio
    click.echo("%.2f USD" % usd)


if __name__ == "__main__":
    aud()
