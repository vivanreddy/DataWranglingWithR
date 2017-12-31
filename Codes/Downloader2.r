setwd("C:\\Users\\Hp\\DataWranglingWithR")

if(!file.exists(".\\DataSets\\SampleData.csv")){
  URL = "https://raw.githubusercontent.com/cksajil/DataWranglingWithR/master/DataSets/SampleData.csv"
  download.file(URL, destfile = ".\\Datasets\\SampleData.csv", method ="curl")
  dateofDownload<-date()
}


if(!file.exists(".\\DataSets\\BaltimoreCameraData.xlsx")){
  URL = "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.tsv?accessType=DOWNLOAD"
  download.file(URL, destfile = ".\\Datasets\\BaltimoreCameraData.xlsx", method ="curl")
  dateofDownload<-date()
}



list.files(".\\Datasets")
