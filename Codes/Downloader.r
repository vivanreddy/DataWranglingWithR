# Download Data From URLs

ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")
head(ad)


mydat <- fread("http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat")
head(mydat)

sample <- read.table(".\\DataSets\\SampleData.csv", sep =",", header= TRUE)
head(sample)
