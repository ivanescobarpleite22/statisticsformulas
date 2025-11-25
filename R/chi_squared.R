# Probability sample variance (quasi-variance) greater than 2500
sigma <- 1200 
sigma2 <- sigma^2
n <- 25
s2_threshold <- 2500

chi_value <- (n-1) * s2_threshold/sigma2
chi_value
prob <- 1- pchisq(chi_value,df = n-1)
prob
