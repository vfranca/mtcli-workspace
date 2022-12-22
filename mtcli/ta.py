"""
scripts python
Copyright 2021 Valmir França da Silva

comando ta (taxa de acerto)
"""
import click


# Cria o comando ta
@click.command()
@click.argument("acertos", type=int)
@click.argument("erros", type=int)
def ta(acertos, erros):
    """comando ta (taxa de acerto)."""
    trades = acertos + erros
    taxa_acerto = acertos / trades * 100
    click.echo("%i acertos" % acertos)
    click.echo("%i erros" % erros)
    click.echo("%i%% taxa de acerto" % taxa_acerto)


if __name__ == "__main__":
    ta()
