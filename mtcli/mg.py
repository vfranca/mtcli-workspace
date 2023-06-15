# calcula a margem de garantia
import click


@click.command()
@click.argument("preco", type=float)
@click.argument("tamanho", type=float)
@click.argument("volume", type=float)
@click.option("--alavancagem", "-a", type=int, default=200)
def mg(preco, tamanho, volume, alavancagem):
	""" Calcula a margem de garantia"""
	margem = (preco * tamanho * volume) / alavancagem
	click.echo("%.2f" % margem)


if __name__ == "__main__":
	mg()
