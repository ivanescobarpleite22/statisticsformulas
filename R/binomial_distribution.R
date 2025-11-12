p_binom_greater_equal <- function(x, n, p){
  1 - pbinom(x - 1, size = n, prob = p)
}
p_binom_greater <- function(x,n,p){
  return(1-pbinom(x,size=n,prob=p))
}
p_binom_lower <- function(x, n, p){
  return(pbinom(x, size = n, prob = p))
}

p_binom_interval <- function(a, b, n, p){
  return(pbinom(b, size = n, prob = p) - pbinom(a - 1, size = n, prob = p))
}
binomial_mean <- function(n,p){
  return (n*p)
}
binomial_var <- function(n,p){
  return (n*p*(1-p))
}
