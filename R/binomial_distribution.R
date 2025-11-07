binomial <- function(n,x,p){
  q <- 1-p
  comb <- factorial(n) /(factorial(x) * factorial(n-x))
  return (comb * (p^x)* q^(n-x))
}
binomial_mean <- function(n,p){
  return (n*p)
}
binomial_var <- function(n,p){
  return (n*p*(p-1))
}

