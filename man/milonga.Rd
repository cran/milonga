\name{milonga}
\alias{milonga}
\title{Multiple imputation for multivariate binary outcome}
\usage{
milonga(data, null_p=NULL, weight=10, burnin=NULL, rep=10) 
}
\arguments{
  \item{data}{Data frame or matrix of a multivariate binary outcome with missing values to impute, NA is for missing values}

  \item{null_p}{Prespecified probability of the all-zero profile. The default is NULL where 1/2^T is applied}

  \item{weight}{A weight between study population for observed frequencies and a weighted population for unobserved frequencies, default is 10}

  \item{burnin}{Number of burnin iterations, default is NULL}
  
  \item{rep}{Number of imputation iterations, default is 10}
}

\value{
burnin a list of burnin datasets if burn is specified.

imp a list of imputation datasets
}
\description{
Multiple imputation for multivariate binary outcome by Gibbs' sampling of all potential profiles.
}

\details{
TBA
}
\examples{
data(polio)
null_p<-0.8
out<-milonga(polio, null_p, burnin=5)
names(out)
}

