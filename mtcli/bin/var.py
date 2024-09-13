import click

@click.command()
@click.argument("variacao", type=float)
@click.argument("preco", type=float)
def per(variacao, preco):
	var_percentual = variacao / preco * 100
	click.echo("%.2f%%" % var_percentual)


if __name__ == "__main__":
	per()
