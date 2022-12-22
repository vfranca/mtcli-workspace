import MetaTrader5 as mt5

# Conecta o MetaTrader 5
if not mt5.initialize():
	exit("não foi possivel conectar  o MetaTrader 5")

# Obtem os dados da conta
account = mt5.account_info()
# Exibe a margem livre
print("%.2f" % account.margin_free)
