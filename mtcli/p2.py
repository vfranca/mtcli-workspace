"""
scripts python
Copyright 2022 Valmir França
"""
import click


@click.command()
@click.argument("final", type=float)
@click.argument("inicial", type=float)
@click.argument("recuo", type=float)
def cli(final, inicial, recuo):
    """Calcula o movimento projetado de perna 2 = perna 1"""
    perna1 = final - inicial
    perna2 = recuo + perna1
    recuo_em_pontos = abs(final - recuo)
    recuo_percentual = recuo_em_pontos / perna1 * 100
    click.echo("%.2f" % abs(perna1))
    click.echo("%.2f" % perna2)
    click.echo("%.0f%%" % recuo_percentual)


if __name__ == "__main__":
    cli()
