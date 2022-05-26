## Latest Updates:

05/22/22 Version 115 of the dataset. Daily data has been added until 5/21. The peer-reviewed publication for this dataset has now been published in Epidemiologia an MDPI journal, and can be accessed here: https://doi.org/10.3390/epidemiologia2030024. Please cite this when using the dataset. The dataset files: full_dataset.tsv.gz and full_dataset_clean.tsv.gz have been split in 1 GB parts using the Linux utility called Split. So make sure to join the parts before unzipping. We had to make this change as we had huge issues uploading files larger than 2GB's (hence the delay in the dataset releases).

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

# Version 115 release notes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6438032.svg)](https://doi.org/10.5281/zenodo.6438032)

Version 115 of the dataset. In this release we introduced splitting of the main dataset files for easier upload to Zenodo. The dataset files: full_dataset.tsv.gz and full_dataset_clean.tsv.gz have been split in 1 GB parts using the Linux utility called Split. So make sure to join the parts before unzipping. We had to make this change as we had huge issues uploading files larger than 2GB's (hence the delay in the dataset releases) 

# How to cite this dataset:

Our paper: 
```
@Article{epidemiologia2030024,
AUTHOR = {Banda, Juan M. and Tekumalla, Ramya and Wang, Guanyu and Yu, Jingyuan and Liu, Tuo and Ding, Yuning and Artemova, Ekaterina and Tutubalina, Elena and Chowell, Gerardo},
TITLE = {A Large-Scale COVID-19 Twitter Chatter Dataset for Open Scientific Research—An International Collaboration},
JOURNAL = {Epidemiologia},
VOLUME = {2},
YEAR = {2021},
NUMBER = {3},
PAGES = {315--324},
URL = {https://www.mdpi.com/2673-3986/2/3/24},
ISSN = {2673-3986},
DOI = {10.3390/epidemiologia2030024}
}
```

Version 115

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
  version      = {115},
  doi          = {10.5281/zenodo.3723939},
  url          = {https://doi.org/10.5281/zenodo.3723939}
}

```
