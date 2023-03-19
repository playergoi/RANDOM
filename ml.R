#linear regression-------------------
model<-lm(weight~height,data=women)
summary(model)$r.square
ggplot(women,aes(height,weight,col=height))+geom_point()+geom_point(aes(height,fitted(model),col=weight))
sse<-sum((fitted(model)-women$weight)^2)
ssr<-sum((fitted(model)-mean(women$weight))^2)
sst<-sse+ssr
ssr
sse
rsq<-ssr/sst
?diamonds
str(diamonds)
library(dplyr)
diamonds %>% filter(cut=='Good',, price>450,color=='D',x<4)->diamond_good_cut
diamond_good_cut
library(ggplot2)
ggplot(diamonds,aes(price))+geom_histogram(bins = 10,fill='skyblue',col='red')
ggplot(diamonds,aes(cut,fill=cut,col=cut))+geom_bar()
ggplot(diamonds,aes(x=x,y=y,col=x))+geom_point()

boxplot(diamonds$y)
#outlier detection
