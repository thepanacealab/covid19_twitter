## Latest Updates:

08/01/21 Version 73 of the dataset. Daily data has been added for 7/31, 7/30, 7/29, and 7/28. Dailies update frequency will change to once a week on Wednesdays.

07/28/21 Daily data (under the /dailies/ folder) has been added for 7/27, 7/26, and 7/25, note that some tweets will bleed into the following day due to different timezones captured.

07/25/21 Version 72 of the dataset. Daily data has been added for 7/24, 7/23, 7/22, and 7/21. Dailies update frequency will change to once a week on Wednesdays.

07/21/21 Daily data (under the /dailies/ folder) has been added for 7/20, 7/19, and 7/18, note that some tweets will bleed into the following day due to different timezones captured.

07/18/21 Version 71 of the dataset. Daily data has been added for 7/17, 7/16, 7/15, and 7/14. Dailies update frequency will change to once a week on Wednesdays.

07/14/21 Daily data (under the /dailies/ folder) has been added for 7/13, 7/12, and 7/11, note that some tweets will bleed into the following day due to different timezones captured.

07/11/21 Version 70 of the dataset. Daily data has been added for 7/10, 7/9, 7/8, and 7/7. Dailies update frequency will change to once a week on Wednesdays.

07/07/21 Daily data (under the /dailies/ folder) has been added for 7/6, 7/5, and 7/4, note that some tweets will bleed into the following day due to different timezones captured.

07/04/21 Version 69 of the dataset. We have reached the 1.2 billion tweets milestone. Daily data has been added for 7/3, 7/2, 7/1, and 6/30. Dailies update frequency will change to once a week on Wednesdays.

06/30/21 Daily data (under the /dailies/ folder) has been added for 6/27, 6/28, and 6/29, note that some tweets will bleed into the following day due to different timezones captured.

06/27/21 Version 68 of the dataset. We have reached the 1.1 billion tweets milestone. Daily data has been added for 6/26, 6/25, 6/24, 6/23, and 6/22. Dailies update frequency will change to once a week on Wednesdays. 

06/22/21 Daily data (under the /dailies/ folder) has been added for 6/21 and 6/20, note that some tweets will bleed into the following day due to different timezones captured.

06/20/21 Version 67 of the dataset. We have reached the 1.1 billion tweets milestone. Daily data has been added for 6/19, 6/18, and 6/17.

06/17/21 Daily data (under the /dailies/ folder) has been added for 6/16 and 6/15, note that some tweets will bleed into the following day due to different timezones captured.

06/15/21 Daily data (under the /dailies/ folder) has been added for 6/14 and 6/13, note that some tweets will bleed into the following day due to different timezones captured.

06/13/21 Version 66 of the dataset. We have reached the 1.1 billion tweets milestone. Daily data has been added for 6/12, 6/11, and 6/10.

06/10/21 Daily data (under the /dailies/ folder) has been added for 6/09 and 6/08, note that some tweets will bleed into the following day due to different timezones captured.

06/08/21 Daily data (under the /dailies/ folder) has been added for 6/07 and 6/06, note that some tweets will bleed into the following day due to different timezones captured.

# Covid-19 Twitter chatter dataset for scientific use

Due to the relevance of the COVID-19 global pandemic, we are releasing our dataset of tweets acquired from the Twitter Stream related to COVID-19 chatter. The first 9 weeks of data (from January 1st, 2020 to March 11th, 2020) contain very low tweet counts as we filtered other data we were collecting for other research purposes, however, one can see the dramatic increase as the awareness for the virus spread. Dedicated data gathering started from March 11th yielding over 4 million tweets a day.

The data collected from the stream captures all languages, but the higher prevalence are:  English, Spanish, and French. We release all tweets and retweets on the full dataset, and a cleaned version with no retweets. There are several practical reasons for us to leave the retweets, tracing important tweets and their dissemination is one of them. For NLP tasks we provide the top 1000 frequent terms, the top 1000 bigrams, and the top 1000 trigrams. Some general statistics per day are included for both datasets.

We will continue to update the dataset every two days here and weekly in Zenodo. 

For more information on processing and visualizations please visit: www.panacealab.org/covid19

# Usage 

All tweets ids found in full_dataset.tsv and full_dataset-clean.tsv need to be hydrated using a tool like get_metada.py from the Social Media Toolkit (SMMT) released by our lab or Twarc. 

Note: All the code in the /processing_code folder is provided as-is, it was used to generate the provided files from the source Tweet JSON files. Documentation will be gradually added for these scripts. 

We added a [Colab Notebook tutorial](COVID_19_dataset_Tutorial.ipynb) with some code to help you hydrate and pre-process the dataset. Note that this is just for illustration and will not download and process the whole dataset for you.


# Mainted by:

[Panacea Lab](www.panacealab.org) - [Georgia State University](www.gsu.edu) - [Juan M. Banda](www.jmbanda.com), Ramya Tekumalla, and Gerardo Chowell-Puente.
Additional data provided by: Guanyu Wang (Missouri school of journalism, University of Missouri), Jingyuan Yu (Department of social psychology, Universitat Autònoma de Barcelona), Tuo Liu (Department of psychology, Carl von Ossietzky Universität Oldenburg), Yuning Ding (Language technology lab, Universität Duisburg-Essen), Katya Artemova (NRU HSE) and Elena Tutubalina (KFU)

# Version 72 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5136525.svg)](https://doi.org/10.5281/zenodo.5136525)

Version 72 of the dataset. This release reaches the milestone of 1 Billion tweets. 

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

Version 71

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
  version      = {71},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

```
