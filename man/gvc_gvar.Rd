% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gvc_gvar.R
\name{gvc_gvar}
\alias{gvc_gvar}
\alias{gvc_gvar.default}
\title{gentypic Variance}
\usage{
gvc_gvar(.data, .y, .x = NULL, .rep, .gen, .env)

\method{gvc_gvar}{default}(.data, .y, .x = NULL, .rep, .gen, .env)
}
\arguments{
\item{.data}{data.frame}

\item{.y}{Response}

\item{.x}{Covariate by default NULL}

\item{.rep}{Repliction}

\item{.gen}{gentypic Factor}

\item{.env}{Environmental Factor}
}
\value{
gentypic Variance
}
\description{
gvc_gvar computes gentypic variances
for given traits of different gentypes from replicated data using methodology
 explained by Burton, G. W. & Devane, E. H. (1953) and Allard, R.W. (2010).
}
\examples{
set.seed(12345)
Response <- c(
               rnorm(48, mean = 15000, sd = 500)
             , rnorm(48, mean =  5000, sd = 500)
             , rnorm(48, mean =  1000, sd = 500)
             )
Rep      <- as.factor(rep(1:3, each = 48))
Variety  <- gl(n = 4, k =  4, length = 144, labels = letters[1:4])
Env      <- gl(n = 3, k = 16, length = 144, labels = letters[1:3])
df1      <- data.frame(Response, Rep, Variety, Env)

# gentypic Variance
gvar1 <-
 gvc_gvar(
          .data  = df1
         , .y    = Response
         , .rep  = Rep
         , .gen  = Variety
         , .env  = Env
         )
gvar1

library(eda4treeR)
data(DataExam6.2)
gvar2 <-
  gvc_gvar(
          .data  = DataExam6.2
         , .y    = Dbh.mean
         , .rep  = Replication
         , .gen  = Family
         , .env  = Province
         )
gvar2
}
\references{
\enumerate{
         \item R.K. Singh and B.D.Chaudhary
         \emph{Biometrical Methods in Quantitative Genetic Analysis}.
               Kalyani Publishers, New Delhi
             }
\enumerate{
         \item Williams, E.R., Matheson, A.C. and Harwood, C.E. (2002).\emph{Experimental Design and Analysis for Tree Improvement}.
               CSIRO Publishing.
             }
}
\author{
\enumerate{
         \item  Sami Ullah (\email{samiullahuos@gmail.com})
         \item  Muhammad Yaseen (\email{myaseen208@gmail.com})
         }
}
