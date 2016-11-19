# The Arabic Keyphrase Extraction Corpus
This repository contains the Arabic Keyphrase Extraction Corpus (AKEC) built by Muhammad Helmy, Marco Basaldella, Eddy Maddalena, Stefano Mizzaro and Gianluca Demartini.

The corpus and the process we used for its building are described in detail in the paper _''Towards Building a Standard Dataset for Arabic Keyphrase Extraction Evaluation''_, presented at the 20th International Conference on Asian Language Processing (IALP 2016), held in Tainan, Taiwan, from November 21 to 23, 2016.

You can find a brief statistical overview of the Corpus in the ```docs``` folder, or you can see it online at [this link](https://ailab-uniud.github.io/akec/).

## The corpus

The corpus consists in 160 arabic documents and their keyphrases. We selected the documents from a variety of sources, while we collected the keyphrases using a large-scale Crowdsourcing experiment. 

The repository is structured as follows.

```
├── docs 
├── documents 
│   ├── pure
│   └── raw
└── keyphrases
    ├── sort_frequency
    └── sort_lm
```

The ```docs``` folder contains the stastical analysis mentioned above.

The ```documents``` folder contains the documents. We provide the documents in their original form (plus some formatting) in the ```raw``` folder and in _pure_ form, i.e. with diacritics removed, in the ```pure``` folder. 

The ```keyphrases``` folder contains the crowd-assigned keyphrases. We provide four files; two of them contain the keyphrases ordered using their frequency inside the crowd workers selections (in the `sort_frequency` folder) and the other two contain the keyphrases ordered using a simple language model generated from the crowd selection as well (in the `sort_lm` folder). For each sorting, we provide both the keyphrases in their _pure_ form (```pure.txt```) and in their _lemmatized_ form (```lemmatized.txt```).

### Citation

If you use our dataset, please cite the reference paper:

```
@inproceedings{akec2016,
	author={Helmy, Muhammad and Basaldella, Marco and Maddalena, Eddy and Mizzaro, Stefano and Demartini, Gianluca},
    title={Towards Building a Standard Dataset for Arabic Keyphrase Extraction Evaluation},
    booktitle={Proceedings of the 20th International Conference on Asian Language Processing (IALP 2016)},
    year={2016},
    address={Tainan (Taiwan)}
}
```

### Acknowledgments

To perform NLP in Arabic, we used the [AraMorph](http://www.nongnu.org/aramorph/) software, which is a Java port of the [Buckwalter Arabic Morphological Analyzer](https://catalog.ldc.upenn.edu/LDC2002L49). 

We selected the documents for our corpus from 4 different sources:
* [Arabic Newspapers Corpus](https://sites.google.com/site/mouradabbas9/corpora)
* [Corpus of Contemporary Arabic](https://sourceforge.net/projects/easc-corpus/)
* [Essex Arabic Summaries Corpus](https://sourceforge.net/projects/easc-corpus/)
* [Open Source Arabic Corpora](https://sites.google.com/site/motazsite/corpora/osac)


### License

Please be aware that some of the resources we used to assemble are licensed for research purposes only. For this reason, we also make our corpus available for research purposes only. 
