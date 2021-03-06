% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NDP.R
\name{NDP}
\alias{NDP}
\title{Calculate the normalised dot product}
\usage{
NDP(matrow1, matrow2, m = 0.5, n = 2, mass)
}
\arguments{
\item{matrow1}{character vector or numerical vector, the entries correspond 
to the mass vector and contain corresponding intensities to the masses, 
it is the first feature to compare}

\item{matrow2}{character vector or numerical vector, the entries correspond 
to the mass vector and contain corresponding intensities to the masses, 
it is the second feature to compare}

\item{m}{numeric, exponent to calculate peak intensity-based weights}

\item{n}{numeric, exponent to calculate peak intensity-based weights}

\item{mass}{character vector or numerical vector, vector with all masses 
which occur in the data set}
}
\value{
NDP returns a numeric similarity coefficient between 0 and 1
}
\description{
Calculate the normalised dot product (NDP)
}
\details{
The NDP is calculated according to the following formula: 
 \deqn{NDP = \frac{\sum(W_{S1, i} \cdot W_{S2, i}) ^ 2}{ \sum(W_{S1, i} ^ 2) * \sum(W_{S2, i} ^ 2) }}{\sum(W_{S1, i} \cdot W_{S2, i}) ^ 2 \sum(W_{S1, i} ^ 2) * \sum(W_{S2, i} ^ 2)},
 with \eqn{W = [ peak intensity] ^{m} \cdot [m/z]^n}. For further information 
 see Li et al. (2015): Navigating natural variation in herbivory-induced
 secondary metabolism in coyote tobacco populations using MS/MS structural analysis. 
 PNAS, E4147--E4155. NDP returns a numeric value ranging between 0 and 1, where 0 
indicates no similarity between the two precursors, while 1 indicates 
a strong similarity between the two precursors.
}
\examples{
data("binnedMSP", package = "MetCirc")
NDP(matrow1 = binnedMSP[1,], matrow2 = binnedMSP[2,], m = 0.5, n = 2,
 mass = colnames(binnedMSP))
}
\author{
Thomas Naake, \email{thomasnaake@googlemail.com}
}

