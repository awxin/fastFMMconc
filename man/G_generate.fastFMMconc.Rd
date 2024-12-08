% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/G_generate.R
\name{G_generate.fastFMMconc}
\alias{G_generate.fastFMMconc}
\title{Generate the G matrix in concurrent cases}
\usage{
\method{G_generate}{fastFMMconc}(fmm, mum, i, j, MoM = 1)
}
\arguments{
\item{fmm}{"fastFMM" object. Ignored except for dispatch.}

\item{mum}{The massively univariate model output. Contains relevant data,
such as the transposed Ztlist from the univariate fit.}

\item{i}{Integer for first index of the covariance}

\item{j}{Integer for second index of the covariance}

\item{MoM}{indicator for type of MoM estimation}
}
\value{
A list with the new Z, the original Ztlist, and indices
}
\description{
Creates a design matrix from the massive univariate step, assuming the model
is concurrent. Unlike the non-concurrent case, there is curently no encoding
for different MoM estimators.
}
