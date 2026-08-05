# Malaria Parasite Genomic Surveillance

## Overview

Malaria remains a major public-health burden in Africa, with *Plasmodium falciparum* responsible for most malaria cases and deaths. Although interventions such as insecticide-treated nets, rapid diagnostic tests, and antimalarial therapies have substantially reduced malaria burden, the emergence and spread of drug-resistant parasites threatens these gains.

Parasite genomic surveillance provides a way to detect and monitor resistance at the genetic level. By analysing parasite DNA, resistance-associated mutations can be identified and their distribution can be investigated across geographical regions and time.

In this project, we use *Plasmodium falciparum* genomic data from the MalariaGEN Pf8 dataset to:

- quantify known drug-resistance markers across African samples;
- investigate differences in resistance-marker frequencies between regions;
- investigate temporal patterns where data are available;
- recover parasite population structure using PCA/PCoA and clustering;
- investigate the relationship between genetic structure and geography;
- build machine-learning models to predict resistance-associated phenotypes from genomic features;
- evaluate and interpret model performance.

---

## Project Objectives

The project addresses four main objectives.

### 1. Resistance-marker profiling

Quantify the frequency of known resistance-associated markers, including markers in genes such as:

- `pfcrt`
- `pfmdr1`
- `dhfr`
- `dhps`
- `pfkelch13`

The analysis examines the distribution of these markers among African parasite samples.

### 2. Geographic and temporal comparison

Compare resistance-marker distributions across African regions and, where appropriate data are available, across different sampling years.

The analysis includes comparisons such as:

- East Africa vs West Africa
- country-level distributions
- changes in marker frequencies over time

### 3. Population structure

Investigate genetic population structure among African *P. falciparum* samples using:

- genetic distances;
- PCA/PCoA;
- K-means clustering;
- cluster-stability measures;
- geographic comparisons.

### 4. Machine-learning prediction

Use parasite genomic features to predict resistance-associated labels for multiple antimalarial drugs.

The modelling component investigates whether genomic variation can be used to distinguish resistant and sensitive parasites and identifies features that contribute to prediction.

---

# Data

## Data sources

The primary genomic data come from the **MalariaGEN Pf8 dataset**.

Additional annotation and biological information were obtained from resources such as PlasmoDB where required.

### Main resources

- MalariaGEN: https://www.malariagen.net
- MalariaGEN Data Python documentation: https://malariagen.github.io/malariagen-data-python/latest/
- PlasmoDB: https://plasmodb.org
- VEuPathDB: https://veupathdb.org
- World Health Organization Global Malaria Programme: https://www.who.int/teams/global-malaria-programme

---

# Repository Structure

```text
project1/
│
├── data/
│   │
│   ├── raw/
│   │   └── Original/input datasets used for the analysis
│   │
│   └── processed/
│       └── Data and results produced during the analysis
│
├── scripts/
│   ├── cleaned_metadata.ipynb
│   ├── genotype.ipynb
│   ├── pca.ipynb
│   └── ml.ipynb
│
└── README.md
