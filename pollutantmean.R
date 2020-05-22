setwd("C:/Users/Sai Rahul/Desktop/Coursera/specdata")
pollutantmean<- function(dir,pol,id=1:332){
  sumo<-0
  ob<-0
  data<-data.frame()
  for(i in id){
    a<-sprintf("%03d",i)
    df<-read.csv(paste(a,".csv",sep=""))
    data<-rbind(data,df)
  }
  
  return (mean(data[,pol],na.rm=TRUE))
}