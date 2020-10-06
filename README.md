## Latest Updates:

10/6/20 Daily data (under the /dailies/ folder) has been added for 10/5 and 10/4, note that some tweets will bleed into the following day due to different timezones captured.

10/5/20 Version 30 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 10/3, 10/2, and 10/1.

10/01/20 Daily data (under the /dailies/ folder) has been added for 9/30 and 9/29, note that some tweets will bleed into the following day due to different timezones captured.

9/29/20 Daily data (under the /dailies/ folder) has been added for 9/28 and 9/27, note that some tweets will bleed into the following day due to different timezones captured.

9/27/20 Version 29 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available. Dailies have been added for 9/26, 9/25, and 9/24.

9/24/20 Daily data (under the /dailies/ folder) has been added for 9/23 and 9/22, note that some tweets will bleed into the following day due to different timezones captured.

9/22/20 Daily data (under the /dailies/ folder) has been added for 9/21 and 9/20, note that some tweets will bleed into the following day due to different timezones captured.

9/20/20 Version 28 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available. Dailies have been added for 9/19, 9/18, and 9/17.

9/17/20 Daily data (under the /dailies/ folder) has been added for 9/16 and 9/15, note that some tweets will bleed into the following day due to different timezones captured.

9/15/20 Daily data (under the /dailies/ folder) has been added for 9/14 and 9/13, note that some tweets will bleed into the following day due to different timezones captured.

9/13/20 Version 27 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available. Dailies have been added for 9/12, 9/11, and 9/10.

9/10/20 Daily data (under the /dailies/ folder) has been added for 9/9 and 9/8, note that some tweets will bleed into the following day due to different timezones captured.

9/8/20 Daily data (under the /dailies/ folder) has been added for 9/7 and 9/6, note that some tweets will bleed into the following day due to different timezones captured.


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

# Version 30.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4065674.svg)](https://doi.org/10.5281/zenodo.4065674) 

Version 30 of the dataset, we have added the regular weekly update and some additional historical tweets in Russian, courtesy of our collaborators. Dailies have been added for 10/3, 10/2, and 10/1.

# Version 29.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4054267.svg)](https://doi.org/10.5281/zenodo.4054267)

Version 29 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available.

# Version 28.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4039988.svg)](https://doi.org/10.5281/zenodo.4039988)

Version 28 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available.

# Version 27.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4027658.svg)](https://doi.org/10.5281/zenodo.4027658)

Version 27 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available.

# Version 26.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4017050.svg)](https://doi.org/10.5281/zenodo.4017050)

Version 26 of the dataset, we have refactored the full_dataset.tsv and full_dataset_clean.tsv files (since version 20) to include two additional columns: language and place country code (when available). This change now includes language and country code for ALL the tweets in the dataset, not only clean tweets. With this change we have removed the clean_place_country.tar.gz and clean_languages.tar.gz files. With our refactoring of the dataset generating code we also found a small bug that made some of the retweets not be counted properly, hence the extra increase on tweets available.


# How to cite this dataset:

Version 30.0

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
  version      = {29.0},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

``
