#!/usr/bin/python
# -*- coding: utf-8 -*-
#
#   /$$$$$$  /$$      /$$ /$$      /$$ /$$$$$$$$
#  /$$__  $$| $$$    /$$$| $$$    /$$$|__  $$__/
# | $$  \__/| $$$$  /$$$$| $$$$  /$$$$   | $$   
# |  $$$$$$ | $$ $$/$$ $$| $$ $$/$$ $$   | $$   
#  \____  $$| $$  $$$| $$| $$  $$$| $$   | $$   
#  /$$  \ $$| $$\  $ | $$| $$\  $ | $$   | $$   
# |  $$$$$$/| $$ \/  | $$| $$ \/  | $$   | $$   
#  \______/ |__/     |__/|__/     |__/   |__/  
#
#
# Developed during Biomedical Hackathon 6 - http://blah6.linkedannotation.org/
# Authors: Ramya Tekumalla, Javad Asl, Juan M. Banda
# Contributors: Kevin B. Cohen, Joanthan Lucero

import pandas as pd
import numpy as np
import json
import sys
import string
import re
# This will load the fields list
import fields

fieldsFilter = fields.fields

fileN = sys.argv[1]

data = []

with open(fileN, 'r') as f:
    for line in f:
        data.append(json.loads(line))

'''
with open(fileN, "r") as read_file:
    data = json.load(read_file)
'''

tweet_df = pd.io.json.json_normalize(data)
# Cleaner solution in case some of the fields in the list are non existent and/or have typos
tweet_df = tweet_df.loc[:, tweet_df.columns.isin(fieldsFilter)]

tweet_df['text'] = tweet_df['text'].str.replace('\n','')
tweet_df['text'] = tweet_df['text'].str.replace('\r','')

with open(fileN[:-5]+".tsv",'w') as write_tsv:
    write_tsv.write(tweet_df.to_csv(sep='\t', index=False, encoding='utf-8'))
