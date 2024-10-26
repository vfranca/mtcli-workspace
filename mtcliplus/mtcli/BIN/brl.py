import click


@click.command()
@click.argument("preco", type=float)
@click.option("--cambio", "-c", type=float, default=5.00)
def brl(preco, cambio):
    """Converte real para dolar."""
    preco_usd = preco * (1/cambio)
    click.echo("%.2f USD" % preco_usd)


if __name__ == "__main__":
    brl()
