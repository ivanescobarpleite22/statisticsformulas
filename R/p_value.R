# We have a coin, and we believe it is biased in favor of heads, meaning it
# produces more heads than tails when flipped. To decide whether this is
# true, we flip the coin 20 times and observe 15 heads. Let α = 0.05.
n <-  20
x <- 15
p <- 0.5

p_value <- 1 -pbinom(x-1,n,p)
p_value
