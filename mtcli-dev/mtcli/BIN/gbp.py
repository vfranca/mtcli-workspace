"""
Converte libra para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=1.283)
def gbp(preco, cambio):
    """Converte libra para dolar americano."""
    usd = preco * cambio
    click.echo("%.2f USD" % usd)


if __name__ == "__main__":
    gbp()
