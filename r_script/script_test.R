# This script tests for the R function rmvtvarnorm.R
rm(list=ls())
getwd()
setwd('C:/Users/hongxiao/Documents/zhuGit/test0')
source('./r_script/rmvtvarnorm.R')

n.sample = 100
p = 3
mu = rep(0,p)
covmat = cbind(c(1,0.5,0),c(0.5,1,0.5),c(0, 0.5,1))


X = rmvtvarnorm(mu, covmat, n.sample)
View(X)
dim(X)
