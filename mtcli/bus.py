""" Exibe a numeracao das barras do pregao americano."""
import click


@click.command()
@click.argument("num-barra", type=int)
@click.option("--barras-globex", "-bg", type=int, default=186)
@click.option("--corte", "-c", type=int, default=150)
def bus(num_barra, barras_globex, corte):
    """Exibe a numeracao das barras na sessao americana.

    Parametros:
        num_bar (int): numero da barra
        globex (int): barras do globex
        corte (int): corte para barras da sessao americana

    Retorna:
        int: o numero da barra

    """
    # converte numero da barra
    if num_barra > corte:
        num = num_barra - barras_globex
    if num_barra < corte:
        num = num_barra + barras_globex
    # exibe o numero da barra convertido
    click.echo("%i" % num)


if __name__ == "__main__":
    bus()
