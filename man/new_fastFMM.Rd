% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fastFMM.R
\name{new_fastFMM}
\alias{new_fastFMM}
\title{Create a new "fastFMM" object}
\usage{
new_fastFMM(
  formula,
  data,
  subj_id,
  argvals,
  family,
  residuals,
  caic,
  randeffs,
  var,
  analytic
)
}
\arguments{
\item{formula}{Formula in `lme4` formula syntax.}

\item{data}{Data frame to fit.}

\item{subj_id}{Character, name of variable containing IDs. Paased from `fui`}

\item{argvals}{List of points to fit on the functional domain. Only applies
for the bootstrap case (i.e., `analytic = FALSE`).}

\item{family}{Character, GLM family of the response. Passed from `fui`.}

\item{residuals}{Logical, indicates whether residuals are saved from
unsmoothed LME. Passed from `fui`.}

\item{caic}{Logical, indicates cAIC calculation return. Defaults to `FALSE`.}

\item{randeffs}{Logical, indicates whether random effect estimates are returned.
Passed from `fui`.}

\item{var}{Logical, indicates whether to calculate variance. Passed from
`fui`.}

\item{analytic}{Logical, indicates whether variance will be calculated
analytically. Passed from `fui`.}
}
\value{
A "fastFMM" object containing parameters for fitting a functional
mixed model using the FUI scheme. The object contains each of the passed
args (`formula, data, ..., analytic`), with the exception of `var`.
Additional entries returned are:
\enumerate{
\item `out_index`: locations in `data` where functional domain exists
\item `argvals`: either `argvals` as passed (if bootstrap) or a vector `1:L`
where `L` is the size of the functional domain
}
}
\description{
The class "fastFMM" (and its inheritors) contain parameters for fast
univariate inference. The basic "fastFMM" object is equipped for
non-concurrent model fitting.
}
\details{
Object creation populates fields relevant to later steps, such as the
location of the functional domain in the data frame.
}
