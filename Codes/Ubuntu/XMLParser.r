setwd("/home/sajil/Dropbox/ICTAK_DataScience_R/DataWranglingWithR")

library(XML)

fileUrl = "http://www.w3schools.com/xml/simple.xml"

download.file(fileUrl, destfile = "/home/sajil/Dropbox/ICTAK_DataScience_R/DataWranglingWithR/DataSets/food.xml")
doc = xmlTreeParse(file = "/home/sajil/Dropbox/ICTAK_DataScience_R/DataWranglingWithR/DataSets/food.xml", useInternalNodes = TRUE)

rootNode <- xmlRoot(doc)
xmlName(rootNode)

rootNode[[2]]
rootNode[[2]][[4]]
xmlName(rootNode[[2]][[4]])

result = xmlSApply(rootNode[[2]], xmlValue)
xmlSApply(rootNode, xmlValue)
xpathSApply(rootNode, "//price", xmlValue)
