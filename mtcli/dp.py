"""
scripts python
Copyright 2022 Valmir França
"""
import click


@click.command()
@click.argument("abertura", type=float)
@click.argument("desvpad", type=float)
@click.option("--niveis", "-n", type=int, default=4)
@click.option("--passo", "-p", type=float, default=1)
def cli(desvpad, abertura, niveis, passo):
    """Exibe níveis de desvio padrão."""
    click.echo("%.2f %.0f %.2f desvio" % (desvpad, niveis, passo))
    # níveis acima da abertura
    for i in reversed(range(1, niveis + 1)):
        desvio = abertura + (desvpad * passo) * i
        click.echo("%.2f" % desvio)
    # abertura
    click.echo("%.2f abertura" % abertura)
    # níveis abaixo da abertura
    for i in range(1, niveis + 1):
        desvio = abertura - (desvpad * passo) * i
        click.echo("%.2f" % desvio)


if __name__ == "__main__":
    cli()
