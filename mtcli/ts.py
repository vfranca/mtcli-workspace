"""
scripts python
Copyright 2022 Valmir França da Silva

grupo de comandos ts (trade system)
"""
import click


# Importa os comandos
from em import em
from be import be
from ta import ta
from po import po


# Cria o grupo de comandos ts
@click.group()
def cli():
    """grupo de comandos ts (trade system)."""
    pass


# Adiciona os comandos
cli.add_command(em)
cli.add_command(be)
cli.add_command(ta)
cli.add_command(po)


if __name__ == "__main__":
    cli()
