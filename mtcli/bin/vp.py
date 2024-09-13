import click
from os import getenv


digitos = getenv("DIGITOS")


@click.command()
@click.argument("preco", type=float)
@click.option("--percentual", "-p", type=float, default=1)
@click.option("--niveis", "-n", type=int, default=2)
def var(preco, percentual, niveis):
    # Exibe os niveis percentuais positivos
    for i in range(niveis).__reversed__():
        i += 1; niveis_positivos = preco * (1 + (percentual*i)/100)
        click.echo("%.{0}f".format(digitos) % niveis_positivos)
    # Exibe o preco de referencia
    click.echo("%.{0}f".format(digitos) % preco)
    # Exibe os niveis percentuais negativos
    for i in range(niveis):
        i += 1; niveis_negativos = preco * (-1 + (percentual*i)/100)
        click.echo("%.{0}f".format(digitos) % abs(niveis_negativos))



if __name__ == "__main__":
    var()
