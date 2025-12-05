rm(list=ls())

b=pressure
b

w=b$pressure
w
length(w)

#a.3*3 matrix for first 9 observations 

first = w[1:9]
first

m1=matrix(first,nrow=3,ncol=3,byrow=T)
m1

#b.3*3 matrix for last 9 observations

last = w[11:19]
last

m2=matrix(last,nrow=3,ncol=3,byrow=T)
m2

#c.Multiplication of a and b

m1 %*% m2

#d Samples of size 10,15,18

s1=sample(w,10,replace=F)
s1

s2=sample(w,15,replace=F)
s2

s3=sample(w,18,replace=F)
s3


#Sampling Error=z*sd(population)/sqrt(n)
#Standard Error= sd(sample)/sqrt(n)

#For Sample 1

Sampling_error_s1=1.96*sd(w)/sqrt(length(s1))
Sampling_error_s1

Standard_error_s1= sd(s1)/sqrt(length(s1))
Standard_error_s1

#For Sample 2

Sampling_error_s2=1.96*sd(w)/sqrt(length(s2))
Sampling_error_s2

Standard_error_s2= sd(s2)/sqrt(length(s2))
Standard_error_s2

#For Sample 3

Sampling_error_s3=1.96*sd(w)/sqrt(length(s3))
Sampling_error_s3

Standard_error_s3= sd(s3)/sqrt(length(s3))
Standard_error_s3

