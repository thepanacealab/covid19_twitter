import pandas as pd
import sys

fileN = sys.argv[1]

data = pd.read_csv(fileN, sep='\t',encoding = 'utf8',lineterminator='\n', usecols = [0,1], names=['tweet_id', 'date'] ,low_memory=False, dtype=str)

dataC = data.groupby('date').count()

with open("statistics-" + fileN[:-4] + ".tsv",'w') as write_tsv:
    write_tsv.write(dataC.to_csv(sep='\t', encoding='utf-8'))
