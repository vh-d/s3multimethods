
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Multiple dispatch with S3

The goal of this repo is to show a simple way to obtain multiple
dispatch with S3 classes and methods in R.

## Example

This is a basic example which shows you how to make a function that
dispatch on two arguments:

``` r
ff <- function(x, y) {
  UseMethod("ff", x)
}

ff.character <- function(x, y){
  UseMethod("ff.character", y)
}

ff.character.numeric <- function(x, y) {
  sprintf("Character '%s' + numeric %s", x, y)
}


ff.character.integer <- function(x, y) {
  sprintf("Character '%s' + integer %s", x, y)
}


ff.character.character <- function(x, y) {
  sprintf("Character '%s' + character '%s'", x, y)
}
```

``` r
# library(s3multimethods)

ff("a", 1)
#> [1] "Character 'a' + numeric 1"
ff("a", 1L)
#> [1] "Character 'a' + integer 1"
ff("a", 'b')
#> [1] "Character 'a' + character 'b'"
```
