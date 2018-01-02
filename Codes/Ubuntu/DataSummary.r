# To know the available Datasets
data()

# To explore a specific data sets
?Titanic

setwd("/home/sajil/Dropbox/ICTAK_DataScience_R/DataWranglingWithR")
data <- read.csv("./DataSets/globalterrorismdb_0617dist.csv")

# To know type of data
class(data)

# To know dimension of data
dim(data)

# To sneak into head and tail
head(data)
tail(data)

# To get a summary of data
summary(data)
str(data)

# To find # of NA values in a given column
sum(is.na(data$nhostkid))

# To find # of NA values in all columns
colSums(is.na(data))
colSums(is.na(data))["nhostkid"]

data("iris")
class(iris)
head(iris)
summary(iris)

iris[iris$Petal.Length %in% c("1.4", "1.3"),]

# Changing class to data frame

?Titanic
data("Titanic")
class(Titanic)
head(Titanic)

ship = as.data.frame(Titanic)
head(ship)
