library("xlsx")

setwd("/home/sajil/Dropbox/ICTAK_DataScience_R/DataWranglingWithR")

dummyexcel <- read.xlsx("./DataSets/DummyBook.xlsx",sheetIndex = 1, header = TRUE)

head(dummyexcel)

cols = 1:3
rows = 2:4

dummyexcel <- read.xlsx("./DataSets/DummyBook.xlsx", colIndex = cols, rowIndex = rows, sheetIndex = 1, header = TRUE)

head(dummyexcel)
