"""
Calculadora de barras para o DAX
"""

import click


@click.group()
def cb():
    pass


@click.command()
@click.argument("bar_number", type=int)
def eu(bar_number):
    """Calculadora de barras para o mercado europeu"""
    bar = bar_number - 81 if bar_number > 81 else bar_number + 81
    click.echo("%i" % bar)


@click.command()
@click.argument("bar_number", type=int)
def us(bar_number):
    """Calculadora de barras para o mercado americano"""
    bar = bar_number - 186 if bar_number > 186 else bar_number + 186
    click.echo("%i" % bar)


cb.add_command(eu)
cb.add_command(us)


if __name__ == "__main__":
    cb()
