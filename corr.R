setwd("C:/Users/Sai Rahul/Desktop/Coursera/specdata")
corr<- function(dir,thr=0){
  c<-NULL
  for(i in 1:332){
    a<-sprintf("%03d",i)
    df<-read.csv(paste0(a,".csv"))
    dff<-df[complete.cases(df),]
    if(nrow(dff)>thr){
      c<-c(c,cor(dff[,"sulfate"],dff[,"nitrate"]))
    }
  }
  return (c)
}