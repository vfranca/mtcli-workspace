"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
calculo do contrato por diferença
"""
import click


@click.command()
@click.argument("tamanho-tick", type=float)
@click.argument("valor-tick", type=float)
@click.argument("volume", type=float)
@click.argument("pontos", type=float)
def mf(tamanho_tick, valor_tick, volume, pontos):
    """Cálculo do mercado futuro."""
    tamanho_contrato = valor_tick / tamanho_tick
    mf = tamanho_contrato * volume * pontos
    click.echo("%.2f" % mf)


if __name__ == "__main__":
    mf()
