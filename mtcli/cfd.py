"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
calculo do contrato por diferença
"""
import click

@click.command()
@click.argument("tamanho-contrato", type=float)
@click.argument("volume_minimo", type=float)
@click.argument("range", type=float)
def cli(tamanho_contrato, volume_minimo, range):
	""" Calcula do contrato por diferença"""
	cfd = range * volume_minimo * tamanho_contrato
	click.echo("%.2f" % cfd)


if __name__ == "__main__":
	cli()
