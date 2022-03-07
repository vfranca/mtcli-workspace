import click


@click.command()
@click.argument("p1", type=float)
@click.argument("p2", type=float)
def cli(p1, p2):
	pm = (p1 + p2) / 2
	click.echo("%.2f" % pm)


if __name__ == "__main__":
	cli()
