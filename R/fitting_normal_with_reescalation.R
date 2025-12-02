#The following table contains the scores (out of 100) obtained by students
# in Statistics over the last 5 years, classified into 10-point intervals:
# Can we affirm at a 95 % confidence level that the distribution of scores is normal?

# Observed frequencies in 10 classes
obs_frec <- c(2,30,80,145,250,245,140,75,28,5)
n <- sum(obs_frec)
k <- length(obs_frec)

# Closed interval edges
breaks <- seq(0,100,by=10)

# Class mdipoints for parameter estimation from grouped data- 
mids <- (breaks[-length(breaks)]+ breaks[-1])/2

# Estimate Normal parameters from grouped data
mu_hat <- sum(obs_frec * mids) / n
sig_hat <- sqrt(sum(obs_frec * (mids - mu_hat)^2) / n)

mu_hat
sig_hat

# Compute theoretical  probabilities for each class interval under N(mu,sig)
p <- numeric(k)
for(i in 1:k){
  p[i] <- pnorm(breaks[i+1], mean = mu_hat, sd = sig_hat) -
    pnorm(breaks[i],   mean = mu_hat, sd = sig_hat)
}
sum(p)

# Rescale probabilities to ensure they sum to 1
# rescale only if |sum(p) -1| >= 1e-6

if(abs(sum(p)-1)>=1e-6){
  p <- p/sum(p)
}
# Optional print to verify
sum(p)
p

# Expected value

expected <- n * p
expected

# Chi^2 statistic 
chi2_hat <- sum((obs_frec - expected)^2 / expected)
chi2_hat

# degrees of freedom: df = k - estimated_parameters - 1
df <- k - 2 - 1
df

# p-value for Chi^2 with df = 7
p_val <- pchisq(chi2_hat,df=df,lower.tail=FALSE)
p_val

# 95% critical Chi^2 value for alpha = 0.05 (right tail)
crit <- qchisq(0.95,df=df)
crit
