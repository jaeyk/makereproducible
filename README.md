[![Travis build status](https://travis-ci.com/jaeyk/kimtools.svg?branch=master)](https://travis-ci.com/jaeyk/kimtools)

# kimtools

File an [issue](https://github.com/jaeyk/kimtools/issues) if you have problems, questions or suggestions.

## Installation

```r

## Install the current development version from GitHub

devtools::install_github("jaeyk/kimtools",
        dependencies = TRUE))
```

## Usage

### `make_here`

Okay. You learned that [creating self-contained projects is great](https://swcarpentry.github.io/r-novice-gapminder/02-project-intro/) to increase research reproducibility and make your life easier. To make a project self-contained, one of the things you need to do is [**STOP** using `setwd()` and **START** using alternatives like `here()`](https://github.com/jennybc/here_here). The problem is people, including and especially me, are lazy. We know the best practice but we don't follow it. Let's say you already completed your data analysis, but you want to make your project self-contained before sharing it. The `make_here` nudges you to do that by saving typing time.

```
# Not self-contained because this absolute path only works in my laptop!

read_csv("/home/jae/validating-two-linked-fates/raw_data/sub-data.txt")

# Voila! Now, the project is self-contained.

read_csv(make_here("/home/jae/validating-two-linked-fates/raw_data/sub-data.txt"))
```

## Description

- I developed this package because I am lazy. I found that creating a personal R package is an efficient way to collect, reuse, and refine my code snippets and distribute them.

- The package is written by following Hadley Wickam and Jennifer Bryan's book on [R package development](http://r-pkgs.had.co.nz/). I also found Karl Broman's [R package primer](https://kbroman.org/pkg_primer/) helpful.
