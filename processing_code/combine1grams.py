import pandas as pd 
import os
import sys

pathN = sys.argv[1]

directory = os.fsencode(pathN)
result = pd.DataFrame(columns=['term','counts'])

for file in os.listdir(directory):
     filename = os.fsdecode(file)
     if filename.endswith("-1gram.csv"): 
         data = pd.read_csv(pathN + filename, header=None,names=['term','counts'])
         result = pd.concat([result, data])
     else:
         continue

print("Data has been merged")

result = result.astype({'counts': 'int32'})
result = result.astype({'term': 'str'})

agg = result.groupby('term', as_index=False)[['counts']].sum()
agg = agg.sort_values(by='counts', ascending=False)
agg.to_csv("all_term_counts_clean.csv",index=False)
