"""
scripts python
Copyright 2021 Valmir França da Silva

comando po (payoff)
"""
import click


# Cria o comando po
@click.command()
@click.argument("lucro_medio", type=float)
@click.argument("prejuizo_medio", type=float)
def po(lucro_medio, prejuizo_medio):
    """comando po (payoff)."""
    po = lucro_medio / prejuizo_medio
    click.echo("%.1f" % po)


if __name__ == "__main__":
    cli()
