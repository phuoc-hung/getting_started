install.packages("downloader")
library(downloader)
url<-"https://raw.githubusercontent.com/phuoc-hung/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename<-"femaleMiceWeights.csv"
download(url,destfile=filename)
dat<-read.csv("femaleMiceWeights.csv")
head(dat) # Inspect first 6 rows of the data frame
names(dat) [2]
dat[12,2]
dat$Bodyweight[11]
length(dat$Diet)
c<-which(dat$Diet=="hf")
mean(dat$Bodyweight[c])
set.seed(1)
t<-sample(13:24,1)
dat$Bodyweight[t]

# # dplyr practising
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)
dat<-read.csv("msleep_ggplot2.csv")
class(dat)
head(dat)
str(dat)
table(dat)
nrow(dat)

library(dplyr)
dat1<-filter(dat,order=="Primates") %>% select(sleep_total) %>% unlist
nrow(dat1)
str(dat1)
mean(dat1)
head(dat1)

## Dùng lệnh Summarize 
dat1<-filter(dat,order=="Primates") %>% summarize(mean(sleep_total))
nrow(dat1)
str(dat1)
summarize(dat1)
head(dat1)
