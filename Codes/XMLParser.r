library(XML)

fileUrl = "http://www.w3schools.com/xml/simple.xml"
download.file(fileUrl, destfile = "C:\\Users\\Hp\\DataWranglingWithR\\DataSets\\food.xml")

doc = xmlTreeParse(file = "C:\\Users\\Hp\\DataWranglingWithR\\DataSets\\food.xml", useInternalNodes = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)


rootNode[[2]]
rootNode[[2]][[4]]
xmlName(rootNode[[2]][[4]])


result = xmlSApply(rootNode[[2]], xmlValue)
xmlSApply(rootNode, xmlValue)
xpathSApply(rootNode, "//price", xmlValue)
