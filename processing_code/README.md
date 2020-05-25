# Processing code

Sorry for the lack of documentation here, the processing code will be updated shortly. 

The order of processing goes:

1) Extract JSON from hydrated tweets with: parse_json_extreme.py. If you want cleant tweets (no RTs) use parse_json_extreme_clean.py
2) Apply get_1grams.py to the parsed TSV files to get the term frequencies.
3) Apply get_ngrams.py to the parsed TSV files to get the bigrams and trigrams.
4) Combine all 1grams generated from each TSV file with combine1grams.py.
5) Combine all ngrams generated from each TSV file with combineNgrams.py.

These steps should be enough parse the hydrated JSON tweet files and calculate the ngrams.
