set.seed(13435)

X <-data.frame("Col1" = sample(1:5), "Col2" = sample(6:10), "Col3" = sample(11:15))
X$Col3[c(1,3)] = NA

X

plot(X$Col3)

# To Sort in Ascending
sort(X$Col1)

# To Sort Descending
sort(X$Col1, decreasing = TRUE)

# Move NA values to last
sort(X$Col3,na.last = TRUE)

# Order Based on a Column
X
order(X$Col2)
X[order(X$Col2),]
X[5,2] = 10
X
X[order(X$Col2, X$Col3),]

# A package to do the sorting
library(plyr)
arrange(X,desc(Col2))


# Ading Rows and columns
# rnorm is a random normal vector generation function

X$Col4 = rnorm(5)
X
