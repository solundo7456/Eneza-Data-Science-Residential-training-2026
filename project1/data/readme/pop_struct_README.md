# Pf8 African *P. falciparum* — Population Structure & Drug Resistance

Recovers genetic population structure in African malaria parasite samples (Pf8 dataset) using
PCoA and K-means clustering, then tests whether antimalarial drug resistance clusters within
specific genetic lineages.

## What's here

- `pf8_population_structure_and_drug_resistance.ipynb` — the cleaned analysis notebook.

## Setup

```bash
pip install -r requirements.txt
```

Then edit the path variables at the top of the notebook (Section 0: Configuration) to point at
your local copies of:

- `Pf8_samples.txt` — tab-separated sample metadata
- `Pf8_mean_genotype_distance_snp_only.npy` — precomputed pairwise genetic distance matrix
- `Pf8-samples.csv` — per-sample drug-resistance calls

These files are part of the [MalariaGEN Pf8 data resource](https://www.malariagen.net/resource/34/)
and are not included in this repository.

## Structure

1. **Part 1 — Population Structure**: load & QC-filter samples, validate and run PCoA on the
   genetic distance matrix, visualize against known Country/Population/Region labels, run two
   independent K-means clustering passes, and map clusters onto a real African basemap.
2. **Part 2 — Drug Resistance**: merge six antimalarial resistance markers onto the population
   structure, test cluster/country associations (chi-square, Kruskal-Wallis), and map resistance
   burden geographically.

## Known open question

No cell currently tests resistance against collection Year — whether resistance has increased
over time is not yet analyzed. See the notebook's final markdown cell for this and other
recommended follow-ups.
