[![Travis build status](https://travis-ci.com/jaeyk/kimtools.svg?branch=master)](https://travis-ci.com/jaeyk/kimtools)

# makereproducible

An R Package for Making a Project Computationally Reproducible Before Sharing it

Author: [Jae Yeon Kim](https://jaeyk.github.io/)

File an [issue](https://github.com/jaeyk/makereproducible/issues) if you have problems, questions or suggestions.

## Installation

```r

## Install the current development version from GitHub

devtools::install_github("jaeyk/makereproducible",
        dependencies = TRUE)
        
library(makereproducible)
```

## Usage

### `make_here`

[Creating self-contained projects is great](https://swcarpentry.github.io/r-novice-gapminder/02-project-intro/) to increase research reproducibility and make your life easier. To make a project self-contained, one of the things you need to do is [**STOP** using `setwd()` and **START** using alternatives like `here()`](https://github.com/jennybc/here_here). The problem is people, including, and especially me, are lazy. We know the best practice, but we don't follow it.

The `make_here()` function nudges you to make your project self-contained before sharing it with other people. It does this by saving typing time to turn [the relative and absolute path](https://r4ds.had.co.nz/workflow-projects.html) in your R code into the arguments in the `here()` function.

To learn how to use it, see the examples below.

1. Not self-contained because this absolute path only works in my laptop! (**BAD**)

```r

read_csv("/home/jae/validating-two-linked-fates/raw_data/sub-data.txt")
```

2. Voila! Now, the project is self-contained. (**GOOD**)

```r

read_csv(make_here("/home/jae/validating-two-linked-fates/raw_data/sub-data.txt"))
```

**Only one condition** is needed to make this function work. I assume that you created a main directory for your project (e.g., `your_project`) and divided different types of files into different subdirectories (`data`, `R`, etc.).
