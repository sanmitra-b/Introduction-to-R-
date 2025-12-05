b=mtcars
b
w=b$wt #$ to extract the particular row of weight
length(w)
w
s1=sample(w,7,replace=T) #Takes 7 random samples i.e, SRSWR
s1
s2=sample(w,7,replace=F) #SRSWOR
s2

#---------------Vector Operations------------------------

vector1=c(s1)
vector1

vector2=c(s2)
vector2

vector1+vector2

vector2-vector1

vector1*vector2

vector1/vector2

#--------------Matrix operations--------------------------

m1=matrix(s1,nrow=2,ncol=2,byrow=T) #2*2 Matrix from s1
m1

m2=matrix(s1,nrow=3,ncol=2,byrow=T) #3*2 matrix from s1
m2

m3=matrix(s2,nrow=3,ncol=3,byrow=T) #3*3 matrix from s2
m3

m4=matrix(s2,nrow=2,ncol=2,byrow=T) #2*2 Matrix from s2
m4

m1+m4 #Matrix addition
m1-m4 #Matrix Subtraction

m3 %*% m2 #matrix multiplication
m3 %*% m3 #matrix multiplication

m3*m3 #multiplication of respective elements individually


summary(w)

#-------------Calculate Sampling error and Standard Error--------------


#Sampling Error=z*sd(population)/sqrt(n) , n= sample size
#Standard Error= sd(sample)/sqrt(n) , n =sample size

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
