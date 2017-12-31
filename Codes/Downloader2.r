setwd("C:\\Users\\Hp\\DataWranglingWithR")

if(!file.exists(".\\DataSets\\SampleData.csv")){
  URL = "https://raw.githubusercontent.com/cksajil/DataWranglingWithR/master/DataSets/SampleData.csv"
  download.file(URL, destfile = ".\\Datasets\\SampleData.csv", method ="curl")
  dateofDownload<-date()
  }


list.files(".\\Datasets")
