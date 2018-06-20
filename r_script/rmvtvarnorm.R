rmvtvarnorm=function(mu,vv,n){
#  RMVN Random matrices from the multivariate normal distribution.
#  D = RMVTVARNORM(MU,VV,N) returns a matrix of random samples chosen
#  from the multivariate normal distribution with mean vector=MU, and
#  covariance matrix=vv. N is the number of samples (columns in D).
#  if N>=2, D is m by N matrix, each column is a random vector generated.

if (is.vector(mu)==FALSE) stop("mu of rmvtvarnorm need to be a vector")
if (dim(vv)[2]!=dim(vv)[1]) stop("covariance should be square matrix")
R=chol(vv)
m=length(mu)
if (any(diag(R)<0)==TRUE) stop("covariance matrix must be positive definite")
if (dim(vv)[1]!=m) stop("mean should have same length with dim of covariance")

mu=matrix(rep(mu,n),ncol=n,byrow=FALSE)  # repeating mu in each column[mu,mu,...], m by N.
D=t(matrix(rnorm(n*m),ncol=m,byrow=TRUE)%*%R)+mu; # D is the matrix with N samples on the columns.
if (n==1) return(as.vector(D)) else return(D)
}