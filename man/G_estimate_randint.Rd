% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/G_estimate_randint.R
\name{G_estimate_randint}
\alias{G_estimate_randint}
\title{Special case of estimating covariance of random components G(s1, s2)}
\usage{
G_estimate_randint(fmm, designmat, betaHat, silent = TRUE)
}
\arguments{
\item{fmm}{"fastFMM" object.}

\item{designmat}{Design matrix of the linear models. A list if concurrent.}

\item{betaHat}{Estimated functional fixed effects}

\item{silent}{Whether to print the step description during calculations.
Defaults to `TRUE`.}
}
\value{
An estimation of the G matrix
}
\description{
Estimates the covariance matrix G at Step 3. If the only random effect is an
intercept, we can use a speedup.
}
