\name{zelig2mprobit}
\alias{zelig2mprobit}
\title{Interface between the Zelig Model "mprobit" and the Pre-existing Function...}
\usage{zelig2mprobit(formula, choiceX, cXnames, ..., data)}
\description{Interface between the Zelig Model "mprobit" and the Pre-existing Function}
\value{a list specifying '.function'}
\arguments{\item{formula}{a formula}
\item{choiceX}{an optional list specifying the choice-specific covariates}
\item{cXnames}{a vector of names for the choice-specific covariates}
\item{...}{parameters to be forwarded to the \code{mnp} function}
\item{data}{a \code{data.frame}}}
