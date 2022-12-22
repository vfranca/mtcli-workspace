"""
scripts python
Copyright 2021 Valmir França da Silva

comando em (expectativa matemática)
"""
import click


# Cria o comando em
@click.command()
@click.argument("taxa_acerto", type=int)
@click.argument("ganho_medio", type=float)
@click.argument("perda_media", type=float)
def em(taxa_acerto, ganho_medio, perda_media):
    """comando em (expectativa matemática)."""
    ta = taxa_acerto / 100
    expectativa = (ta * ganho_medio) - ((1 - ta) * perda_media)
    click.echo("%.2f/trade" % expectativa)
    return 0


if __name__ == "__main__":
    em()
