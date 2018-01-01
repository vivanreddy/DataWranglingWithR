setwd("/home/sajil/Dropbox/ICTAK_DataScience_R/DataWranglingWithR")

if(!file.exists("./DataSets/SampleData.csv")){
  URL = "https://raw.githubusercontent.com/cksajil/DataWranglingWithR/master/DataSets/SampleData.csv"
  download.file(URL, destfile = ".\\Datasets\\SampleData.csv", method ="curl")
  dateofDownload<-date()
}


if(!file.exists("./DataSets/DummyBook.xlsx")){
  URL = "https://github.com/cksajil/DataWranglingWithR/raw/master/DataSets/DummyBook.xlsx"
  download.file(URL, destfile = ".\\Datasets\\DummyBook.xlsx", method ="curl")
  dateofDownload<-date()
}

list.files("./DataSets")

