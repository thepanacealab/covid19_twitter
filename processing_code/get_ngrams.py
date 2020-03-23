# Importing libraries 
import pandas as pd
import numpy as np
import sys
import nltk 
import re
import csv 
from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer 
from nltk.corpus import stopwords 
from nltk.tokenize import word_tokenize 
import pandas as pd 

fileN = sys.argv[1]

data = pd.read_csv(fileN, sep='\t',encoding = 'utf8',lineterminator='\n', usecols = [2,3], names=['id_str','text'] ,low_memory=False, dtype=str)

data["id_str"]=data["id_str"].astype(str)
data["text"]=data["text"].astype(str)
  
# Preprocessing 
def remove_string_special_characters(s): 
    stripped = str(s) 
    # removes special characters with ' ' 
    #stripped = re.sub('[^a-zA-z\s]', '', str(s)) 
    #stripped = re.sub('_', '', stripped) 
      
    # Change any white space to one space 
    stripped = re.sub('\s+', ' ', stripped) 

    # Remove urls
    stripped = re.sub(r"http\S+",'', stripped)
      
    # Remove start and end white spaces 
    stripped = stripped.strip() 
    if stripped != '': 
            return stripped.lower() 

data["text"]= data["text"].apply(remove_string_special_characters)
data['text'].dropna(inplace=True)

# Stopword removal  
stop_words = set(stopwords.words('english')) 
spanishSW = set(stopwords.words('spanish'))
stop_words.update(spanishSW)
for i, line in enumerate(data["text"]): 
    data["text"][i] = ' '.join([x for x in nltk.word_tokenize(line) if ( x not in stop_words )]) 
# Getting ngrams  
vectorizer = CountVectorizer(ngram_range = (2,3)).fit(data["text"]) 

bag_of_words = vectorizer.transform(data["text"])
sum_words = bag_of_words.sum(axis=0) 
words_freq = [(word, sum_words[0, idx]) for word, idx in vectorizer.vocabulary_.items()]
words_freq =sorted(words_freq, key = lambda x: x[1], reverse=True)

with open(fileN[:-4]+"-ngram.csv", "w") as f:
    w = csv.writer(f)
    w.writerows(words_freq)
