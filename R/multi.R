#' @export
ff <- function(x, y) {
  UseMethod("ff", x)
}

#' @export
#' @method ff character
ff.character <- function(x, y){
  UseMethod("ff.character", y)
}


#' @export
ff.character.numeric <- function(x, y) {
  sprintf("Character '%s' + numeric %s", x, y)
}


#' @export
ff.character.integer <- function(x, y) {
  sprintf("Character '%s' + integer %s", x, y)
}


#' @export
ff.character.character <- function(x, y) {
  sprintf("Character '%s' + character '%s'", x, y)
}

#' @export
#' @method ff numeric
ff.numeric <- function(x, y){
  UseMethod("ff.numeric", y)
}


#' @export
ff.numeric.numeric <- function(x, y) {
  sprintf("Numeric '%s' + numeric %s", x, y)
}

#' @export
ff.numeric.character <- function(x, y) {
  sprintf("Numeric '%s' + character %s", x, y)
}


# ff("a", 1)
# ff("a", 1L)
# ff("a", 'b')

