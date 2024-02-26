"""Calcula conversoes de moeda com euro."""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--brl", "-b", type=float, default=5.36)
@click.option("--usd", "-u", type=float, default=1.075)
def eur(preco, brl, usd):
    """Converte euro para real e dolar americano."""
    # Converte euro para real brasileiro
    preco_brl = preco * brl
    click.echo("%.2f BRL" % preco_brl)
    # Converte euro para dólar americano
    preco_usd = preco * usd
    click.echo("%.2f USD" % preco_usd)


if __name__ == "__main__":
    eur()
