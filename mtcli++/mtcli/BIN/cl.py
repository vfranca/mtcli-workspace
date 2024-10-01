""" Calculadora de lotes."""
import click
import os

d = os.getenv("DIGITOS")


@click.command()
@click.argument("stop_padrao", type=float)
@click.argument("risco", type=float)
@click.option("--ativo", "-a", default="win")
def cl(stop_padrao, risco, ativo):
    """Calcula a quantidade de lotes de um trade.

    opcoes::
    ativo (string): ativo do trade

    parametros:
    stop_padrao (float): stop padrao
    risco (float): unidade de risco

    retorna:
    (int): quantidade de lotes

    """
    # calcula o lote do win
    if ativo == "win":
        risco_da_operacao = stop_padrao * 0.2 * 1
    # calcula o lote do wdo
    elif ativo == "wdo":
        risco_da_operacao = stop_padrao * 10 * 1
    # calcula o lote do mindol
    elif ativo == "mindol":
        risco_da_operacao = stop_padrao * 10 * 0.1
    # calcula o lote do bra50
    else:
        risco_da_operacao = stop_padrao * 0.2 * 0.1
    # calcula a quantidade de lotes
    lotes = risco / risco_da_operacao
    click.echo("%s" % ativo)
    click.echo("%.{0}f stop padrao".format(d) % stop_padrao)
    click.echo("%.2f unidade de risco" % risco)
    click.echo("%i lote(s)" % lotes)


if __name__ == "__main__":
    cl()
