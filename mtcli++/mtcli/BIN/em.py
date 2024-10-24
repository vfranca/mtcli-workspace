import click


@click.command()
@click.argument("taxa-acerto", type=int)
@click.argument("lucro", type=float)
@click.argument("prejuizo", type=float)
@click.option("--trades", "-t", type=int, default=10)
def em(taxa_acerto, lucro, prejuizo, trades):
    expec_mat = (taxa_acerto/100 * lucro) - ((100 - taxa_acerto)/100 * prejuizo)
    click.echo("%.2f" % expec_mat)


if __name__ == "__main__":
    em()
