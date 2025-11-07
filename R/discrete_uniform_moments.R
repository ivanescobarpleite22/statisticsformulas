#' Moments of the Discrete Uniform Distribution U(a, b)
#'
#' @description Compute the mean and variance for the discrete uniform
#' distribution defined on integers \code{a} to \code{b} (inclusive).
#'
#' @details Support \eqn{\{a, a+1, \dots, b\}} with integers and \eqn{a \le b}.
#' Closed forms:
#' \deqn{\mathrm{E}[X] = \frac{a+b}{2}, \quad \mathrm{Var}(X) = \frac{(b-a+1)^2 - 1}{12}.}
#'
#' @param a Integer lower bound.
#' @param b Integer upper bound (must be \code{>= a}).
#'
#' @return A list with elements \code{mean} and \code{variance}.
#'
#' @examples
#' discrete_uniform_moments(1, 6)
#'
#' @export
discrete_uniform_moments <- function(a, b) {
  if (any(!is.finite(c(a, b))) || a %% 1 != 0 || b %% 1 != 0 || b < a) {
    stop("'a' and 'b' must be finite integers with b >= a.")
  }
  mean_val <- (a + b) / 2
  var_val  <- ((b - a + 1)^2 - 1) / 12
  list(mean = mean_val, variance = var_val)
}
