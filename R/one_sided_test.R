# We wish to compare the best route to get home between two options, A 
# and B. The time taken for each route is measured in minutes, yielding the following values
# Assuming the travel times for each route follow a normal distribution.
# Provide 95 % confidence interval estimates for the difference in means for A and B
# Do the data provide sufficient evidence to conclude that the travel time for route A
# is less than that for route B?

a <- c(29.5, 31.3, 28.5, 29.1, 30.9)
b <- c(29.98, 29.3, 28.42, 34.5, 32.5, 33.3)
result <- t.test(a,b,alternative ="less",var.equal = TRUE,conf.level=0.95)
result
