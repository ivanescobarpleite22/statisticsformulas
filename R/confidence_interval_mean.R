# Assuming this sample is drawn from a normal population , 
# calculate a 95 % confidence interval for the mean .

x <- c (2.2 ,2.66 ,2.74 ,3.41 ,2.46 ,2.96 ,3.34 ,
        2.16 ,2.46 ,2.71 ,2.04 ,3.74 ,3.24 ,3.92 ,2.38 ,
        2.82 ,2.2 , 2.42 ,2.82 ,2.84 ,4.22 ,3.64 ,1.77 ,
        3.44 ,1.53)
n <- length(x)
qt(.975,n-1)
sqrt(var(x))
mean(x)

mean ( x ) -qt (.975 , n - 1)* sqrt (var ( x ))/ sqrt ( n )
mean ( x )+ qt (.975 , n - 1)* sqrt (var ( x ))/ sqrt ( n )
