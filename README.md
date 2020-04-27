
<!-- README.md is generated from README.Rmd. Please edit that file -->

# exuberdata

The goal of `exuberdata` is to provide critcal values for the `exuber`
package.

### Datasets

  - `radf_crit2`: Monte Carlo Critical Values for Recursive Augmented
    Dickey Fuller(`radf`) models

## Installation

Due to the large package size `exuberdata` cannot be distributed as a
conventional CRAN package. However, there are a couple of alternatives
for installation.

First, through the [drat repo](https://github.com/kvasilopoulos/drat)

``` r
install.packages('exuberdata',repos = 'https://kvasilopoulos.github.io/drat/',type = 'source')

# Or, simularly through `exuber` wrapper function
install.packages("exuber")
exuber::install_exuberdata()
```

Finally, it can be installed through [github
repo](https://github.com/kvasilopoulos/exuberdata).

``` r
install.packages("remote")
remotes::install_github("exuberdata")
```
