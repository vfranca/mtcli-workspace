import click


@click.command()
@click.argument("taxa-acerto", type=int)
@click.argument("lucro", type=float)
@click.argument("prejuizo", type=float)
@click.option("--trades", "-t", type=int, default=10)
def em(taxa_acerto, lucro, prejuizo, trades):
    lucro_medio = (taxa_acerto / 100 * lucro) - ((100 - taxa_acerto) / 100 * prejuizo)
    lucro_total = lucro_medio * trades
    click.echo("lucro medio = %.2f" % lucro_medio)
    click.echo("lucro total = %.2f" % lucro_total)
    click.echo("trades = %i" % trades)


if __name__ == "__main__":
    em()
