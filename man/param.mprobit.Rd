\name{param.mprobit}
\alias{param.mprobit}
\title{extract samples from a distribution in order to pass them to the qi function...}
\usage{\method{param}{mprobit}(obj, num=1000, ...)}
\description{extract samples from a distribution in order to pass them to the qi function
(this is primarily a helper function for the mprobit model)}
\value{a list specifying link, link-inverse, random samples, and ancillary parameters}
\arguments{\item{obj}{a zelig object}
\item{num}{an integer specifying the number of simulations to compute}
\item{...}{ignored parameters}}
