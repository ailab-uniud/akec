# The Arabic Keyphrase Extraction Corpus
This repository will containes the Arabic Keyphrase Extraction Corpus (AKEC) built by Muhammad Helmy, Marco Basaldella, Eddy Maddalena, Stefano Mizzaro and Gianluca Demartini.

The corpus itself and the process we used for building it are described in _''Towards Building a Standard Dataset for Arabic Keyphrase Extraction Evaluation''_, presented at the 20th International Conference on Asian Language Processing (IALP 2016), held in Tainan, Taiwan, from November 21 to 23, 2016.

## The corpus

The corpus consists in 160 arabic newspapers articles and their keyphrases. The articles come from a variety of sources, while the keyphrases have been collected using crowdsourcing. 

The repository is structured as follows.

```
├── documents 
│   ├── pure
│   └── raw
└── keyphrases
    ├── sort_frequency
    └── sort_lm
```


The documents are contained in the ```documents``` folder. We provide the documents in their original form (plus some formatting) in the ```raw``` folder and in _pure_ form, i.e. with diacritics removed, in the ```pure``` folder. 

Keyphrases are placed in the ```keyphrases``` directory. We provide four files; two ordered using their frequency inside the crowd workers selections (in the `sort_frequency` folder) and two ordered using a simple language model generated from the crowd selection as well (in the `sort_frequency` folder). For each sorting, we provide both the keyphrases in their _pure_ form (```pure.txt```) and in their lemmatized form (```lemmatized.txt```).

### Citation

If you use our dataset, please cite the reference paper:

```
@inproceedings{muhammad2016crowdsourcing,
	author={Helmy, Muhammad and Basaldella, Marco and Maddalena, Eddy and Mizzaro, Stefano and Demartini, Gianluca},
    title={Towards Building a Standard Dataset for Arabic Keyphrase Extraction Evaluation},
    booktitle={Proceedings of the 20th International Conference on Asian Language Processing (IALP 2016)},
    year={2016},
    address={Tainan (Taiwan)}
}
```

### Acknowledgments

To perform NLP in Arabic, we used the [AraMorph](http://www.nongnu.org/aramorph/) software, which is a Java port of the [Buckwalter Arabic Morphological Analyzer](https://catalog.ldc.upenn.edu/LDC2002L49). 
