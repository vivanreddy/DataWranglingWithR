set.seed(13435)
X <-data.frame("Col1" = sample(1:5), "Col2" = sample(6:10), "Col3" = sample(11:15))
X$Col3[c(1,3)] = NA
X

# Subsetting a Specific Column

X[,2]
X[2,]

X[,"Col2"]

X[2:3, 1:2]

# Logical Subsetting

X[X$Col1>=3 & X$Col2>=7,]
X[X$Col1>=3 | X$Col2>=7,]

#Checking for Missing Values
complete.cases(X)

#The results of complete.cases() is a logical vector with the 
#value TRUE for rows that are complete, 
#and FALSE for rows that have some NA values

# This removes rows with incomplete values
#X <- X[complete.cases(X),]
X <- na.omit(X)

# Explore the dataset airquality for missing values and clean the data
data("airquality")
summary(airquality)
airquality
airnew = airquality[complete.cases(airquality),]
summary(airnew)

