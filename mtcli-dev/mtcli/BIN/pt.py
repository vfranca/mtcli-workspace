""" Plano de trading."""
import click


@click.command()
@click.argument("saldo", type=float)
@click.option("--risco", "-r", type=float, default=1)
@click.option("--meta", "-m", type=int, default=10)
@click.option("--drawdown-absoluto", "-da", type=int, default=10)
@click.option("--drawdown-diario", "-dd", type=int, default=5)
def pt(saldo, risco, meta, drawdown_absoluto, drawdown_diario):
    # Calcula o drawdown absoluto
    da = saldo * (drawdown_absoluto / 100)
    # Calcula o drawdown diario
    dd = saldo * (drawdown_diario / 100)
    # Calcula o risco por operação
    r = saldo * (risco / 100)
    # Calcula a meta mensal
    m = saldo * (meta / 100)
    click.echo("saldo da conta %.2f" % saldo)
    click.echo("drawdown absoluto %.2f (%i%%)" % (-da, -drawdown_absoluto))
    click.echo("drawdown diario %.2f (%i%%)" % (-dd, -drawdown_diario))
    click.echo("risco por trade (R) %.2f (%.1f%%)" % (-r, -risco))
    click.echo("meta mensal %.2f (%i%%)" % (m, meta))


if __name__ == "__main__":
    pt()
