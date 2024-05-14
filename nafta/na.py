import pandas 

csv = pandas.read_csv('./precios-en-surtidor.csv', low_memory=False)

csv_limpio = csv.dropna()

csv_limpio.to_csv('precios_en_surtidor_limpio.csv', index=False)
