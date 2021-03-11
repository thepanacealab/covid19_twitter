## Latest Updates:

03/11/21 Daily data (under the /dailies/ folder) has been added for 3/10 and 3/09, note that some tweets will bleed into the following day due to different timezones captured.

03/09/21 Daily data (under the /dailies/ folder) has been added for 3/08 and 3/07, note that some tweets will bleed into the following day due to different timezones captured.

03/07/21 Version 52 of the dataset. Dailies have been added for 3/06, 3/05 and 3/04. New: we added a [Colab Notebook tutorial](COVID_19_dataset_Tutorial.ipynb) with some code to help you hydrate and pre-process the dataset. Note that this is just for illustration and will not download and process the whole dataset for you.

03/04/21 Daily data (under the /dailies/ folder) has been added for 3/03 and 3/02, note that some tweets will bleed into the following day due to different timezones captured.

03/02/21 Daily data (under the /dailies/ folder) has been added for 3/01 and 2/28, note that some tweets will bleed into the following day due to different timezones captured.

02/28/21 Version 51 of the dataset. Dailies have been added for 2/27, 2/26 and 2/25. New: we added a [Colab Notebook tutorial](COVID_19_dataset_Tutorial.ipynb) with some code to help you hydrate and pre-process the dataset. Note that this is just for illustration and will not download and process the whole dataset for you.

02/25/21 Daily data (under the /dailies/ folder) has been added for 2/24 and 2/23, note that some tweets will bleed into the following day due to different timezones captured.

02/23/21 Daily data (under the /dailies/ folder) has been added for 2/22 and 2/21, note that some tweets will bleed into the following day due to different timezones captured.

02/21/21 Version 50 of the dataset. Dailies have been added for 2/20, 2/19 and 2/18. New: we added a [Colab Notebook tutorial](COVID_19_dataset_Tutorial.ipynb) with some code to help you hydrate and pre-process the dataset. Note that this is just for illustration and will not download and process the whole dataset for you.

02/18/21 Daily data (under the /dailies/ folder) has been added for 2/17 and 2/16, note that some tweets will bleed into the following day due to different timezones captured.

02/16/21 Daily data (under the /dailies/ folder) has been added for 2/15 and 2/14, note that some tweets will bleed into the following day due to different timezones captured.

02/14/21 Version 49 of the dataset. Dailies have been added for 2/13, 2/12 and 2/11. New: we added a [Colab Notebook tutorial](COVID_19_dataset_Tutorial.ipynb) with some code to help you hydrate and pre-process the dataset. Note that this is just for illustration and will not download and process the whole dataset for you.

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

# Version 52.0 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4588081.svg)](https://doi.org/10.5281/zenodo.4588081)

Version 52 of the dataset, we have added the regular weekly update. Dailies have been added for 3/06, 3/05 and 3/04.

# How to cite this dataset:

Our paper: 
```
@misc{banda2020largescale,
      title={A large-scale COVID-19 Twitter chatter dataset for open scientific research -- an international collaboration}, 
      author={Banda, Juan M. and Tekumalla, Ramya and Wang, Guanyu and Yu, Jingyuan and Liu, Tuo and Ding, Yuning and Artemova, Katya and Tutubalinа, Elena and Chowell, Gerardo},
      year={2020},
      eprint={2004.03688},
      archivePrefix={arXiv},
      primaryClass={cs.SI},
      url={https://arxiv.org/abs/2004.03688}
}

```

Version 52.0

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
  version      = {49.0},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

```
