## Latest Updates:

04/04/21 Version 56 of the dataset. We have reached the 1 billion tweets milestone. Daily data has been added for 4/03, 4/02, and 4/01.

04/01/21 Daily data (under the /dailies/ folder) has been added for 3/31 and 3/30, note that some tweets will bleed into the following day due to different timezones captured.

03/30/21 Daily data (under the /dailies/ folder) has been added for 3/29 and 3/28, note that some tweets will bleed into the following day due to different timezones captured.

03/28/21 Version 55 of the dataset. We have reached the 1 billion tweets milestone. Daily data has been added for 3/27, 3/26, and 3/25.

03/25/21 Daily data (under the /dailies/ folder) has been added for 3/24 and 3/23, note that some tweets will bleed into the following day due to different timezones captured.

03/22/21 Daily data (under the /dailies/ folder) has been added for 3/22 and 3/21, note that some tweets will bleed into the following day due to different timezones captured.

03/21/21 Version 54 of the dataset. Daily data has been added for 3/20, 3/19, and 3/18.

03/18/21 Daily data (under the /dailies/ folder) has been added for 3/17 and 3/16, note that some tweets will bleed into the following day due to different timezones captured.

03/16/21 Daily data (under the /dailies/ folder) has been added for 3/15 and 3/14, note that some tweets will bleed into the following day due to different timezones captured.

03/14/21 Version 53 of the dataset. This release marks one full year of releases from us. Additional to our weekly update, we have a new additional set of 2.4 million Russian tweets provided by Katya Artemova (NRU HSE) and Elena Tutubalina (KFU). Daily data has been added for 3/13, 3/12, and 3/11.

03/11/21 Daily data (under the /dailies/ folder) has been added for 3/10 and 3/09, note that some tweets will bleed into the following day due to different timezones captured.

03/09/21 Daily data (under the /dailies/ folder) has been added for 3/08 and 3/07, note that some tweets will bleed into the following day due to different timezones captured.

03/07/21 Version 52 of the dataset. Dailies have been added for 3/06, 3/05 and 3/04. New: we added a [Colab Notebook tutorial](COVID_19_dataset_Tutorial.ipynb) with some code to help you hydrate and pre-process the dataset. Note that this is just for illustration and will not download and process the whole dataset for you.

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

# Version 56.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4662107.svg)](https://doi.org/10.5281/zenodo.4662107)

Version 56 of the dataset. This release reaches the milestone of 1 Billion tweets. 

# How to cite this dataset:

Our paper: 
```
@misc{banda2020largescale,
      title={A large-scale COVID-19 Twitter chatter dataset for open scientific research -- an international collaboration}, 
      author={Banda, Juan M. and Tekumalla, Ramya and Wang, Guanyu and Yu, Jingyuan and Liu, Tuo and Ding, Yuning and Artemova, Katya and Tutubalinа, Elena and Chowell, Gerardo},
      year={2021},
      eprint={2004.03688},
      archivePrefix={arXiv},
      primaryClass={cs.SI},
      url={https://arxiv.org/abs/2004.03688}
}

```

Version 55.0

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
  version      = {55.0},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

```
