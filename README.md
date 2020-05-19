## Latest Updates:

5/19/20 - Daily data (under the /dailies/ folder) has been added for 5/18 and 5/17, note that some tweets will bleed into the following day due to different timezones captured.

5/17/20 - Version 10.0 of the dataset has been released. It can be found in: https://doi.org/10.5281/zenodo.3723939. This incorporates all the dailies until 5/16 and version 9.0 of the dataset PLUS ~1.5 million tweets contributed by: Katya Artemova (NRU HSE) and Elena Tutubaline (KFU). Dailies have been added for 5/14, 5/15, and 5/16 in the dailies folder. We made it to 309 Million tweets in this version of the dataset.

5/14/20 - Daily data (under the /dailies/ folder) has been added for 5/12 and 5/13, note that some tweets will bleed into the following day due to different timezones captured.

5/12/20 - Daily data (under the /dailies/ folder) has been added for 5/10 and 5/11, note that some tweets will bleed into the following day due to different timezones captured.

5/10/20 - Version 9.0 of the dataset has been released. It can be found in: https://doi.org/10.5281/zenodo.3723939. This incorporates all the dailies until 5/9 and version 8.0 of the dataset. Dailies have been added for 5/7, 5/8, and 5/9 in the dailies folder. We made it to 283 Million tweets in this version of the dataset.

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
Additional data provided by: Guanyu Wang (Missouri school of journalism, University of Missouri), Jingyuan Yu (Department of social psychology, Universitat Autònoma de Barcelona), Tuo Liu (Department of psychology, Carl von Ossietzky Universität Oldenburg), Yuning Ding (Language technology lab, Universität Duisburg-Essen)

# Version 10.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3831406.svg)](https://doi.org/10.5281/zenodo.3831406)

Version 10 This incorporates all the dailies until 5/16 and version 9.0 of the dataset PLUS ~1.5 million tweets contributed by: Katya Artemova (NRU HSE) and Elena Tutubaline (KFU). We made it to 309 Million tweets in this version of the dataset.

# Version 9.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3766929.svg)](https://doi.org/10.5281/zenodo.3766929)

We made it to 283 million tweets!. This combines version 8 of the dataset and all the dailies until 5/09.

# Version 8.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3783737.svg)](https://doi.org/10.5281/zenodo.3783737)

We made it to 255 million tweets!. This combines version 7 of the dataset and all the dailies until 5/02.

# Version 7.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3766929.svg)](https://doi.org/10.5281/zenodo.3766929)

We made it to 230 million tweets!. This combines version 6 of the dataset and all the dailies until 4/25.

# Version 6.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3757272.svg)](https://doi.org/10.5281/zenodo.3757272)

We made it to 205 million tweets!. This combines version 5 of the dataset and all the dailies until 4/18.
We updated the name to match the pre-print for the dataset manuscript. 

# Version 5.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3749360.svg)](https://doi.org/10.5281/zenodo.3749360)

This combines version 4 of the dataset and all the dailies until 4/11.

# Version 4.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3738018.svg)](https://doi.org/10.5281/zenodo.3738018)

We have fully integrated our collaborators data, January 27 to March 27th include several million extra tweets. This combines version 3 of the dataset and all the dailies until 4/4.

# Version 3.0 release notes
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3723939.svg)](https://doi.org/10.5281/zenodo.3723939)

Thanks to our new collaborators, We have added full month of tweets between January 27th and February 27th to version 2 of the dataset, plus all the dailes until 3/30. This data now has better coverage for the earlier days of the pandemic. 

# Version 2.0 release notes
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3732460.svg)](https://doi.org/10.5281/zenodo.3732460)

We have added a full seven days of tweets in this latest release. Bascially everything in the dailies folders. We will leave those for people doing daily analyses, but if you haven't downloaded anything before, start with this version of the dataset. We are up to 70,569,368 unique tweets and when removing retweets, we have 13,535,912 unique tweets. 

# Version 1.0 release notes
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3723940.svg)](https://doi.org/10.5281/zenodo.3723940)

Due to the relevance of the COVID-19 global pandemic, we are releasing our dataset of tweets acquired from the Twitter Stream related to COVID-19 chatter. The first 9 weeks of data (from January 1st, 2020 to March 11th, 2020) contain very low tweet counts as we filtered other data we were collecting for other research purposes, however, one can see the dramatic increase as the awareness for the virus spread. Dedicated data gathering started from March 11th to March 22nd which yielded over 4 million tweets a day.

The data collected from the stream captures all languages, but the higher prevalence are:  English, Spanish, and French. We release all tweets and retweets on the full_dataset.tsv file (40,823,816 unique tweets), and a cleaned version with no retweets on the full_dataset-clean.tsv file (7,479,940 unique tweets). There are several practical reasons for us to leave the retweets, tracing important tweets and their dissemination is one of them. For NLP tasks we provide the top 1000 frequent terms in frequent_terms.csv, the top 1000 bigrams in frequent_bigrams.csv, and the top 1000 trigrams in frequent_trigrams.csv. Some general statistics per day are included for both datasets in the statistics-full_dataset.tsv and statistics-full_dataset-clean.tsv files. 

# How to cite this dataset:

Version 10.0

```
@dataset{banda_juan_m_2020_3757272,
  author       = {Banda, Juan M. and
                  Tekumalla, Ramya and
                  Wang, Guanyu and
                  Yu, Jingyuan and
                  Liu, Tuo and
                  Ding, Yuning and
                  Artemova, Katya and
                  Tutubaline, Elena and
                  Chowell, Gerardo},
  title        = {{A large-scale COVID-19 Twitter chatter dataset for 
                   open scientific research - an international
                   collaboration}},
  month        = may,
  year         = 2020,
  note         = {{This dataset will be updated bi-weekly at least 
                   with additional tweets, look at the github repo
                   for these updates. Release: We have standardized
                   the name of the resource to match our pre-print
                   manuscript and to not have to update it every
                   week.}},
  publisher    = {Zenodo},
  version      = {10.0},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

```

