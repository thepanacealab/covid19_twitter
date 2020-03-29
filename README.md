## Latest Updates:

3/29/20 - Version 2.0 of the dataset has been released. Can be found in: https://doi.org/10.5281/zenodo.3732460. Note that if you download this version you will not need any of the daily updates as it contains all data until 3/28. 

3/28/20 - Daily data (under the /dailies/ folder) has been added for 3/26, 3/27 and 3/28, note that some tweets will bleed into the following day due to   

3/26/20 - Daily data (under the /dailies/ folder) has been added for 3/24 and 3/25, note that some tweets will bleed into the following day due to different timezones captured.

3/24/20 - Daily data (under the /dailies/ folder) has been added for 3/22 and 3/23, note that some tweets will bleed into the following day due to different timezones captured.

# Covid-19 Twitter chatter dataset for scientific use

Due to the relevance of the COVID-19 global pandemic, we are releasing our dataset of tweets acquired from the Twitter Stream related to COVID-19 chatter. The first 9 weeks of data (from January 1st, 2020 to March 11th, 2020) contain very low tweet counts as we filtered other data we were collecting for other research purposes, however, one can see the dramatic increase as the awareness for the virus spread. Dedicated data gathering started from March 11th yielding over 4 million tweets a day.

The data collected from the stream captures all languages, but the higher prevalence are:  English, Spanish, and French. We release all tweets and retweets on the full dataset, and a cleaned version with no retweets. There are several practical reasons for us to leave the retweets, tracing important tweets and their dissemination is one of them. For NLP tasks we provide the top 1000 frequent terms, the top 1000 bigrams, and the top 1000 trigrams. Some general statistics per day are included for both datasets.

We will continue to update the dataset every two days here and weekly in Zenodo. 

For more information on processing and visualizations please visit: www.panacealab.org/covid19

# Usage 

All tweets ids found in full_dataset.tsv and full_dataset-clean.tsv need to be hydrated using a tool like get_metada.py from the Social Media Toolkit (SMMT) released by our lab or Twarc. 

Note: All the code in the /processing_code folder is provided as-is, it was used to generate the provided files from the source Tweet JSON files. Documentation will be gradually added for these scripts. 

# Mainted by:

[Panacea Lab](www.panacealab.org) - [Georgia State University](www.gsu.edu) - [Juan M. Banda](www.jmbanda.com), Ramya Tekumalla, and Gerardo Chowell-Puente.

# Version 2.0 release note
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3732460.svg)](https://doi.org/10.5281/zenodo.3732460)

We have added a full seven days of tweets in this latest release. Bascially everything in the dailies folders. We will leave those for people doing daily analyses, but if you haven't downloaded anything before, start with this version of the dataset. We are up to 70,569,368 unique tweets and when removing retweets, we have 13,535,912 unique tweets. 

# Version 1.0 release notes
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3723940.svg)](https://doi.org/10.5281/zenodo.3723940)

Due to the relevance of the COVID-19 global pandemic, we are releasing our dataset of tweets acquired from the Twitter Stream related to COVID-19 chatter. The first 9 weeks of data (from January 1st, 2020 to March 11th, 2020) contain very low tweet counts as we filtered other data we were collecting for other research purposes, however, one can see the dramatic increase as the awareness for the virus spread. Dedicated data gathering started from March 11th to March 22nd which yielded over 4 million tweets a day.

The data collected from the stream captures all languages, but the higher prevalence are:  English, Spanish, and French. We release all tweets and retweets on the full_dataset.tsv file (40,823,816 unique tweets), and a cleaned version with no retweets on the full_dataset-clean.tsv file (7,479,940 unique tweets). There are several practical reasons for us to leave the retweets, tracing important tweets and their dissemination is one of them. For NLP tasks we provide the top 1000 frequent terms in frequent_terms.csv, the top 1000 bigrams in frequent_bigrams.csv, and the top 1000 trigrams in frequent_trigrams.csv. Some general statistics per day are included for both datasets in the statistics-full_dataset.tsv and statistics-full_dataset-clean.tsv files. 

# How to cite this dataset:

Version 1.0

```
@dataset{banda_juan_m_2020_3723940,
  author       = {Banda, Juan M. and
                  Tekumalla, Ramya},
  title        = {{A Twitter Dataset of 40+ million tweets related to 
                   COVID-19}},
  month        = mar,
  year         = 2020,
  note         = {{This dataset will be updated bi-weekly at least 
                   with additional tweets}},
  publisher    = {Zenodo},
  version      = {1.0},
  doi          = {10.5281/zenodo.3723940},
  url          = {https://doi.org/10.5281/zenodo.3723940}
}
```

# License 

This dataset is released under [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) License](https://creativecommons.org/licenses/by-sa/4.0/)
[![CC4B](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/by-sa.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
