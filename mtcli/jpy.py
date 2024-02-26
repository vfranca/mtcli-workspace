import click


@click.command()
@click.argument("preco", type=float)
@click.option("--usd", "-u", type=float, default=138)
def jpy(preco, usd):
    """Converte iene para dolar americano."""
    # Converte iene para dólar americano
    preco_usd = preco * (1 / usd)
    click.echo("USD %.2f" % preco_usd)


if __name__ == "__main__":
    jpy()
