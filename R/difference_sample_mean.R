# A study is being conducted on water quality in a certain area. One
# of the indicators of water quality is the number of micrograms of
# particles per cubic meter. Suppose the variable X, representing the
# number of micrograms of particles, is normally distributed.
# Sixteen measurements are taken, resulting in a sample standard
# deviation of 10.85 units.
# Calculate the probability that the sample mean does not differ
# from the population mean by more than 8 units.
df <-  15 # Degrees of freedom
x <- 8
n <- 16
sx <- 10.85/sqrt(16)

# We calculate the interval
t1 <-  -x/sx
t2 <- x/sx

# We calculate the cumulative probability
probability <- pt(t2,df) - pt(t1,df)

cat("The probability P(",t1,"<= t <=",t2,"is probability = ",probability)

