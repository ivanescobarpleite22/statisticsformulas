
p_normal_greater <- function(a,mean,std){
  return  (1- pnorm(a,mean=mean,sd = std))
}
p_normal_lower <- function(a,mean,std){
 return  (pnorm(a,mean=mean,sd=std))
}

# P between a and b
p_normal_interval <- function(a, b, mean, sd) {
  return(pnorm(b, mean = mean, sd = sd) - pnorm(a, mean = mean, sd = sd))
}

