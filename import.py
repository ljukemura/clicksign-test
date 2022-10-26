import sqlite3
import pandas as pd
import os

schema = sqlite3.connect('test_analytics_engineer.db')
c = schema.cursor()

caminho = ('//home//leandrojukemura//Área de Trabalho//clicksign//Data//')

for f in os.listdir(caminho):
    name = f.split('.')[0]
    caminho_completo = caminho+f
    tabela = pd.read_csv(caminho_completo)
    tabela = tabela.to_sql(name, schema, if_exists='replace', index = False) 
    schema.commit()
schema.close()



