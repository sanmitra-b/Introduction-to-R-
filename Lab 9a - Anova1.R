rm(list=ls())

horse=c(179,160,136,227,217,168,108,124,143,140)
linseed=c(309,229,181,141,260,203,148,169,213,257,244,271)
soyabeen=c(243,230,248,327,329,250,193,271,316,267,199,171,158,248)
sunflower=c(423,340,392,339,341,226,320,295,334,322,297,318)
meatmeal=c(325,257,303,315,380,153,263,242,206,344,258)
casein=c(368,390,379,260,404,318,352,359,216,222,283,332)
wt=c(horse,linseed,soyabeen,sunflower,meatmeal,casein)
wt
a1=rep("horsebean",length(horse))
b1=rep("linseed",length(linseed))
c1=rep("soyabeen",length(soyabeen))
d1=rep("sunflower",length(sunflower))
e1=rep("meatmeal",length(meatmeal))
f1=rep("casein",length(casein))
feed=c(a1,b1,c1,d1,e1,f1)
feed=factor(feed)
feed

boxplot(wt~feed,main="Boxplot of Chick Weights")

#### In the above boxplot we see that median of casein is more than other feeds and median of horsebean is less than other
#### and also medians of other feeds are almost same.

anva=aov(wt~feed)
anva

summary(anva)
