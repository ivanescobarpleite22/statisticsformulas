# We flip a coin 200 times. If heads appears 110 times, should we assume
# with 99 % confidence that the coin is biased?

# We define problem values
n <-  200 # Number of tosses
X <-  110 # Number of heads
p_hat <-  X / n # Observed proportion of heads

# Confidence level and critical Z value for 99% confidence interval
alpha <-  1 - 0.99
Z_alpha_2 <- qnorm(1-alpha/2)

# Calculate the standard error of the proportion
std_error <-  sqrt((p_hat * (1-p_hat))/n)

#Calculate confidence interval
lower_bound <- p_hat - Z_alpha_2 * std_error
upper_bound <- p_hat + Z_alpha_2 * std_error

cat("99% confidence interval: [",lower_bound,", ",upper_bound,"]")
