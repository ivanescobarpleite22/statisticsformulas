# The number of α particles detected by a Geiger counter in 1 second are as follows:
# 1 Fit a Poisson distribution. and test with a 2 Test the goodness of fit with α = 0.05.


# original data
x_full <- 0:6
obs_full <- c(200,220,150,68,25,10,4)

# 1) estimate lambda with original table (6+)
raw <- rep(x_full,times = obs_full)
lambda_hat <- mean(raw)
lambda_hat

# 2) Group them, due that e_i<5, so 0,1,2,3,4,5+
obs <- c(200,220,150,68,25,10+4)

# 3) Theoric Poisson probabilities
p <- c(dpois(0:4,lambda_hat),
       1-ppois(4,lambda_hat)) # P(X >= 5)
sum(p)

# 4) Test chi-squared
chi2 <- chisq.test(obs,p=p)
stat <- as.numeric(chi2$statistic)
stat

df <- length(obs) -1-1 # k-m-1 = 6-1-1=4
pval <- 1-pchisq(stat,df)
pval
