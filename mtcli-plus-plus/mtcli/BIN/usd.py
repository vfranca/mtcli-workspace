""" Converte USD para BRL e EUR."""
import click


@click.command()
@click.argument("preco", type=float)
@click.option("--brl", "-b", type=float, default=5.00)
@click.option("--eur", "-e", type=float, default=1.075)
def usd(preco, brl, eur):
    """Converte USD para BRL e EUR.

    parametros:
    preco (float): preco em USD
    brl (float): taxa de cambio para BRL
    EUR (float): taxa de cambio para EUR

    resultado:
    float: preco em BRL
    float: preco em EUR"""
    # Converte dolar para real brasileiro
    preco_brl = preco * brl
    click.echo("BRL %.2f" % preco_brl)
    # Converte dolar para euro
    preco_eur = preco * (1 / eur)
    click.echo("EUR %.2f" % preco_eur)


if __name__ == "__main__":
    usd()
