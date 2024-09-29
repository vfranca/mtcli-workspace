"""
actual risk
"""

import click


@click.command()
@click.argument("entrada", type=float)
@click.argument("loss", type=float)
@click.argument("cv")
def ar(entrada, loss, cv):
    """Calcula o actual risk e projecoes"""
    risco_efetivo = abs(entrada - loss)
    if cv == "v":
        rr1 = entrada - risco_efetivo * 1
        rr2 = entrada - risco_efetivo * 2
    else:
        rr1 = entrada + risco_efetivo * 1
        rr2 = entrada + risco_efetivo * 2
    click.echo("%.2f risco efetivo" % risco_efetivo)
    click.echo("%.2f r/r=1" % rr1)
    click.echo("%.2f r/r=2" % rr2)


if __name__ == "__main__":
    ar()
