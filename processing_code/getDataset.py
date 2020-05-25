import pandas as pd
import numpy as np
import sys
import os
from datetime import datetime, timedelta
from email.utils import parsedate_tz

pathN = sys.argv[1]
directory = os.fsencode(pathN)

dset = pd.DataFrame(columns=['tweet_id','date','time'])

result = pd.DataFrame(columns=['created_at','id_str'])

for file in os.listdir(directory):
     filename = os.fsdecode(file)
     if ((filename.endswith(".tsv")) and (not filename.endswith("_clean.tsv"))):
         data = pd.read_csv(pathN + filename, sep='\t',encoding = 'utf8',lineterminator='\n', usecols = [0,2], names=['created_at', 'id_str'] ,low_memory=False, dtype=str)
         result = pd.concat([result, data])
     else:
         continue

print("Data has been merged")

result = result.dropna()
result = result.replace(to_replace='None', value=np.nan).dropna()

result["created_at"]=result["created_at"].astype(str)
result["id_str"]=result["id_str"].astype(str)
#print(result.info())

def get_date(datestring):
    datestring=str(datestring)
    time_tuple = parsedate_tz(datestring.strip())
    dt = datetime(*time_tuple[:6])
    dt = dt - timedelta(seconds=time_tuple[-1])
    dateStr = str(dt.year)+"-"+str(dt.month)+"-"+str(dt.day)
    return dateStr


def get_time(datestring):
    datestring=str(datestring)
    time_tuple = parsedate_tz(datestring.strip())
    dt = datetime(*time_tuple[:6])
    dt = dt - timedelta(seconds=time_tuple[-1])
    timeStr = str(dt.hour)+":"+str(dt.minute)+":"+str(dt.second)
    return timeStr

#print(get_date(result["created_at"].values[1]))
#print(result.describe())

dset["tweet_id"] = result["id_str"]

dset["date"] = result["created_at"].apply(lambda x : get_date(x))
dset["time"] = result["created_at"].apply(lambda x : get_time(x))

dset.sort_values(by=['tweet_id'], inplace=True)

with open("full_dataset.tsv",'w') as write_tsv:
    write_tsv.write(dset.to_csv(sep='\t', index=False, encoding='utf-8'))
