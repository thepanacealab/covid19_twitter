import pandas as pd 
import os
import sys

pathN = sys.argv[1]

directory = os.fsencode(pathN)
result = pd.DataFrame(columns=['gram','counts'])

for file in os.listdir(directory):
     filename = os.fsdecode(file)
     if filename.endswith("-ngram.csv"): 
         data = pd.read_csv(pathN + filename, header=None,names=['gram','counts'])
         result = pd.concat([result, data])
     else:
         continue

print("Data has been merged")

result = result.astype({'counts': 'int32'})
result = result.astype({'gram': 'str'})

agg = result.groupby('gram', as_index=False)[['counts']].sum()
agg = agg.sort_values(by='counts', ascending=False)
agg.to_csv("all_n_gram_counts_clean.csv",index=False)

count = agg['gram'].str.split().str.len()

trigrams = agg[~(count==2)]
bigrams = agg[~(count==3)]

bigrams.to_csv("bigram_counts_clean.csv",index=False)
trigrams.to_csv("trigram_counts_clean.csv",index=False)
