"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
Calcula o valor de um range de contrato
"""
import click

@click.command()
@click.argument("tamanho-contrato", type=float)
@click.argument("volume_minimo", type=float)
@click.argument("range", type=float)
def cli(tamanho_contrato, volume_minimo, range):
	""" Valor de um range de contrato"""
	valor_range = range * volume_minimo * tamanho_contrato
	click.echo("%.2f" % valor_range)


if __name__ == "__main__":
	cli()
