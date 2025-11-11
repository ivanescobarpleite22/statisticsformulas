p_normal_greater <- function(a,mean,std){
  prob <- 1- pnorm(a-1,mean=mean,sd = std)
}