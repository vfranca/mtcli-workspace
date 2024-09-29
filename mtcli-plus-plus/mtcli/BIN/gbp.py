import click


@click.command()
@click.argument("preco", type=float)
@click.option("--usd", "-u", type=float, default=1.283)
def gbp(preco, usd):
    """Converte libra para dolar americano."""
    # Converte libra para dólar americano
    preco_usd = preco * usd
    click.echo("USD %.2f" % preco_usd)


if __name__ == "__main__":
    gbp()
