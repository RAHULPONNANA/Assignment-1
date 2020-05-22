setwd("C:/Users/Sai Rahul/Desktop/Coursera/specdata")
complete<- function(dir,id=1:332){
  main<-data.frame()
  for(i in id){
    a<-sprintf("%03d",i)
    df<-read.csv(paste0(a,".csv"))
    nobs<-sum(complete.cases(df))
    dff<-data.frame("id"=i,"nobs"=nobs)
    main<-rbind(main,dff)
  }
  return (main)
}