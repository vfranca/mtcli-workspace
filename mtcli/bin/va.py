import click


@click.command()
@click.argument("p1", type=float)
@click.argument("p2", type=float)
def va(p1, p2):
    vp = (p2 - p1) / p1 * 100
    click.echo("%.1f%%" % vp)


if __name__ == "__main__":
    va()
