% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/var_bootstrap.R
\name{var_bootstrap}
\alias{var_bootstrap}
\title{Analytic variance calculation}
\usage{
var_bootstrap(
  mum,
  umm,
  nknots_min,
  nknots_min_cov,
  betaHat,
  data,
  L,
  num_boots,
  parallel,
  n_cores,
  smooth_method,
  splines,
  silent
)
}
\arguments{
\item{mum}{Massively univariate model output of class "massmm"}

\item{umm}{Univariate mixed model setup of class "unimm"}

\item{nknots_min}{Integer passed from `fui`.}

\item{nknots_min_cov}{Integer passed from `fui`.}

\item{betaHat}{Numeric matrix of smoothed coefficients}

\item{data}{Data frame of values to fit}

\item{L}{integer, number of points on functional domain}

\item{num_boots}{Integer, number of bootstrap replications.}

\item{parallel}{Logical, whether to use parallel processing}

\item{n_cores}{Integer, number of cores for parallelization.}

\item{smooth_method}{Character, passed from `fui`}

\item{splines}{Character, passed from `fui`}

\item{silent}{Logical, suppresses messages when `TRUE`. Passed from `fui`.}
}
\value{
List of final outputs of `fui`
}
\description{
Helper for `fui`. Bootstrapped variance calculation.
}
