import pandas as pd

# URL do dataset CSV do IBGE - Censo Demográfico
url = 'https://sidra.ibge.gov.br/geratabela?format=us.csv&name=tabela1613.csv&terr=N&rank=-&query=t/1613/n1/all/v/all/p/all/c11046/215805/c11047/215815/c11048/215854/c11049/215857/d/v1000091%201'

# Carregando o dataset em um DataFrame do pandas
df = pd.read_csv(url, delimiter=';', encoding='latin1')

# Visualizando as primeiras linhas do DataFrame
print(df.head())
