"""
Converte dolar neozelandes para dolar
"""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=0.60)
def NZD(preco, cambio):
    """Converte dolar neozelandes para dolar."""
    usd = preco * cambio
    click.echo("%.2f USD" % usd)


if __name__ == "__main__":
    nzd()
