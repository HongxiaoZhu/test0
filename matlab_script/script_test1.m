clear;
cd C:\Users\hongxiao\Documents\zhuGit\test0;
addpath('./matlab_script');

nsample = 100;
p = 3;
mu = zeros(p,1);
covmat = [1,0.5,0; 0.5,1,0.5; 0,0.5,1];

X = randmvn(mu,covmat,nsample);