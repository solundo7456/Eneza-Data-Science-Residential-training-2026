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
for more information[../data/readme]

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
│   └── readme
│         │
          └── README.md
          │
          └── pop_struct_README.md
│   ├── raw/
│   │   └── Original/input datasets used for the analysis
│   │
│   └── processed/
│     │
      └── Data and results produced during the analysis
│
├── scripts/
│   ├── cleaned_metadata.ipynb
│   ├── genotype.ipynb
│   ├── pca.ipynb
│   └── ml.ipynb


# Scripts / Notebooks

The `scripts/` directory contains the notebooks used to perform the different
stages of the analysis. Each notebook focuses on a specific part of the
malaria genomic surveillance workflow.

The notebooks are designed to work together, with outputs from earlier stages
being used as inputs for later analyses.

### `cleaned_metadata.ipynb`

This notebook prepares and cleans the sample metadata used throughout the
project.

The main purpose is to make the metadata suitable for linking genomic data with
information such as country, geographical region, and sampling period.

The cleaned metadata are then used in the downstream genotype, population
structure, geographic, and machine-learning analyses.

---

### `genotype.ipynb`

This notebook processes the parasite genotype data and prepares the genomic
features used in the analysis.

The notebook focuses on resistance-associated genetic variation, including
known markers and additional mutations.

The main steps include:

- loading the genotype data;
- selecting relevant resistance-associated markers;
- processing genotype calls;
- identifying resistant and sensitive states;
- handling rare or other mutations;
- handling missing genotype information;
- preparing processed genotype features.

The resulting processed genotype data are used in both the population-structure
and machine-learning analyses.

---

### `pca.ipynb`

This notebook investigates the genetic population structure of the African
parasite samples.

The analysis uses genetic-distance information to explore relationships among
parasite samples and includes:

- filtering and preparing African samples;
- analysing genetic distances;
- dimensionality reduction using PCA/PCoA;
- K-means clustering;
- evaluating the resulting clusters;
- comparing genetic clusters with geographical information.

The purpose is to determine whether parasite samples form distinct genetic
groups and whether these groups show geographical patterns.

---

### `ml.ipynb`

This notebook contains the machine-learning analysis for predicting
antimalarial drug resistance from parasite genomic features.

The notebook prepares genomic features and resistance-associated target labels,
then trains and evaluates classification models.

The analysis includes:

- preparing genomic features;
- preparing resistance targets;
- examining target distributions;
- handling class imbalance;
- train/test splitting;
- stratified cross-validation;
- Random Forest classification;
- XGBoost classification;
- class-weighted modelling;
- PR-AUC and ROC-AUC evaluation;
- precision, recall, and F1-score;
- feature-importance analysis.

The notebook is used to investigate how well genomic variation can predict
resistance-associated phenotypes and which genomic features contribute most to
the predictions.
