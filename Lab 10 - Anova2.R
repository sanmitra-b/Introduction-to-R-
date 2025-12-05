rm(list=ls())


batchA=c(24,40,32)
batchB=c(15,29,42,41,33)
batchC=c(11,22,39,25)

scores=c(batchA,batchB,batchC)
scores

g1=rep("BatchA",length(batchA))
g2=rep("BatchB",length(batchB))
g3=rep("BatchC",length(batchC))

groups=c(g1,g2,g3)
groups=factor(groups) ## converts batch A,B,C into categories
groups


anva=aov(scores~groups)
anva

summary(anva)
