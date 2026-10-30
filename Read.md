# Soil Extracellular Enzyme Activity Analysis

## Overview

This repository contains R scripts, datasets, statistical analysis results, and figures for examining extracellular enzyme activity across three experimental groups: **Black, Blue, and Green**.

The analysis evaluates patterns in seven extracellular enzymes associated with carbon, nitrogen, and phosphorus cycling.

The workflow includes data preparation, descriptive statistics, visualization, one-way analysis of variance (ANOVA), and Tukey's Honestly Significant Difference (HSD) post-hoc comparisons.

## Dataset Description

The dataset contains 18 observations representing three experimental groups, with six replicates per group.

Seven extracellular enzymes were analyzed:

| Enzyme | Abbreviation | Primary functional association |
|---|---|---|
| Alpha-glucosidase | AG | Carbon cycling |
| Beta-glucosidase | BG | Carbon cycling |
| Cellobiohydrolase | CB | Carbon cycling |
| N-acetylglucosaminidase | NAG | Nitrogen and carbon cycling |
| Phosphatase | PHOS | Phosphorus cycling |
| Xylosidase | XYL | Carbon cycling |
| Leucine aminopeptidase | LAP | Nitrogen cycling |

The dataset includes the variables `Group`, `Replicate`, `AG`, `BG`, `CB`, `NAG`, `PHOS`, `XYL`, and `LAP`.

## Statistical Analysis

All analyses were conducted using R.

### Descriptive statistics

Mean enzyme activity, standard deviation (SD), and standard error (SE) were calculated for each enzyme within each group.

Standard error was calculated as:

SE = SD / √n

where n represents the number of observations per group.

### One-way ANOVA

Separate one-way ANOVA models were fitted for each enzyme to evaluate differences in mean enzyme activity among Black, Blue, and Green.

The statistical model was:

`Enzyme activity ~ Group`

### Post-hoc comparisons

Tukey's Honestly Significant Difference (HSD) test was used to conduct pairwise comparisons among groups, adjusting for multiple pairwise tests within each enzyme.

Statistical significance was evaluated at α = 0.05.

These analyses assume independent experimental replicates and appropriate ANOVA model assumptions.

## Data Visualization

Bar graphs were generated using `ggplot2`.

Figures represent mean enzyme activity ± standard error.

The repository includes:

- `All_Enzymes.png` — Combined enzyme activity comparison across groups.
- `Black_Enzymes.png` — Enzyme activity profile for the Black group.
- `Blue_Enzymes.png` — Enzyme activity profile for the Blue group.
- `Green_Enzymes.png` — Enzyme activity profile for the Green group.

## Repository Files

| File | Description |
|---|---|
| `enzyme_data.csv` | Original enzyme activity measurements |
| `enzyme_summary.csv` | Descriptive statistics |
| `enzyme_analysis.R` | R code for analysis and visualization |
| `ANOVA_results.csv` | One-way ANOVA results |
| `Tukey_results.csv` | Tukey HSD pairwise comparison results |
| `All_Enzymes.png` | Combined enzyme activity figure |
| `Black_Enzymes.png` | Black group enzyme figure |
| `Blue_Enzymes.png` | Blue group enzyme figure |
| `Green_Enzymes.png` | Green group enzyme figure |

## Software and R Packages

The analysis uses R and the following packages:

- `ggplot2` — Data visualization
- `dplyr` — Data manipulation
- `tidyr` — Data reshaping
- `multcompView` — Significance letter assignment, when used

## Reproducibility

1. Download or clone this repository.
2. Open the project in RStudio.
3. Install the required R packages.
4. Open `enzyme_analysis.R`.
5. Ensure the input file path points to `enzyme_data.csv`.
6. Run the script to reproduce the statistical analyses and figures.

The original data are provided to support transparency and reproducibility.

## Research Applications

This workflow can be adapted to studies investigating soil microbial functioning, extracellular enzyme activities, nutrient cycling, and responses to experimental treatments.

## Citation

If you use or adapt this workflow, please acknowledge the repository and its associated author.

## License

No license has been specified. Reuse and redistribution permissions should be clarified before incorporating the code or data into other projects.
