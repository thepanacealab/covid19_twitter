## Latest Updates:

11/19/20 Daily data (under the /dailies/ folder) has been added for 11/18 and 11/17, note that some tweets will bleed into the following day due to different timezones captured
.

11/17/20 Daily data (under the /dailies/ folder) has been added for 11/16 and 11/15, note that some tweets will bleed into the following day due to different timezones captured.

11/15/20 Version 36 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 11/14, 11/13, and 11/12.

11/12/20 Daily data (under the /dailies/ folder) has been added for 11/11 and 11/10, note that some tweets will bleed into the following day due to different timezones captured.

11/10/20 Upon request, we have added the visualization R code for the plots found in http://www.panacealab.org/covid19/, a bit messy but they get the job done.

11/10/20 Daily data (under the /dailies/ folder) has been added for 11/09 and 11/08, note that some tweets will bleed into the following day due to different timezones captured.

11/08/20 Version 35 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 11/07, 11/06, and 11/05.

11/05/20 Daily data (under the /dailies/ folder) has been added for 11/04 and 11/03, note that some tweets will bleed into the following day due to different timezones captured.

11/03/20 Back to our regular release schedule! - Daily data (under the /dailies/ folder) has been added for 11/02 and 11/01, note that some tweets will bleed into the following day due to different timezones captured.

11/01/20 Version 34 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 10/31, 10/30, and 10/29.

10/29/20 Daily data (under the /dailies/ folder) has been added for 10/28 and 10/27, note that some tweets will bleed into the following day due to different timezones captured.

10/27/20 Daily data (under the /dailies/ folder) has been added for 10/26 and 10/25, note that some tweets will bleed into the following day due to different timezones captured.

10/25/20 Version 33 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 10/24, 10/23, and 10/22.

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
Additional data provided by: Guanyu Wang (Missouri school of journalism, University of Missouri), Jingyuan Yu (Department of social psychology, Universitat Autònoma de Barcelona), Tuo Liu (Department of psychology, Carl von Ossietzky Universität Oldenburg), Yuning Ding (Language technology lab, Universität Duisburg-Essen), Katya Artemova (NRU HSE) and Elena Tutubalina (KFU)

# Version 36.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4274912.svg)](https://doi.org/10.5281/zenodo.4274912)

Version 36 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 11/14, 11/13 and 11/12


# How to cite this dataset:

Version 36.0

```
@dataset{banda_juan_m_2020_3757272,
  author       = {Banda, Juan M. and
                  Tekumalla, Ramya and
                  Wang, Guanyu and
                  Yu, Jingyuan and
                  Liu, Tuo and
                  Ding, Yuning and
                  Artemova, Katya and
                  Tutubalinа, Elena and
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
  version      = {36.0},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

``
