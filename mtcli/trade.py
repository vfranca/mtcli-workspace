"""
mtcli
Copyright 2021 Valmir França
ferramentas de trading
"""
import click

stop_default = 6
retorno = 3


def get_profits(entrada, risco, rr):
    tp = []
    for n in range(rr):
        tp.append(entrada + risco * (n + 1))
    return tp


@click.command()
@click.argument("entrada", type=float)
@click.option("--risco", "-r", type=float, default=stop_default)
@click.option("--retorno", "-rr", type=int, default=retorno)
def cli(entrada, risco, retorno):
    """Entrada, stop loss e alvo de uma operação."""
    sl = entrada - risco
    tp = get_profits(entrada, risco, retorno)
    click.echo("%.2f stop loss" % sl)
    click.echo("%.2f entrada" % entrada)
    for n in range(retorno):
        click.echo("%.2f %ix" % (tp[n], n + 1))
    return 0


if __name__ == "__main__":
    cli()
