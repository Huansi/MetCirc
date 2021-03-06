% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert2MSP.R
\name{convert2MSP}
\alias{convert2MSP}
\title{Convert deconvoluted matrix into MSP format}
\usage{
convert2MSP(mm, splitPattern = "_", splitIndMZ = 1, splitIndRT = 2, 
 names = FALSE, metNames = FALSE, class = FALSE)
}
\arguments{
\item{mm}{matrix, mm has to have four columns with colnames 
mz, rt, intensity (order is not important). In the fourth column there has 
to information about the precursor ion which will be assessed by 
splitPattern and splitInd. Optionally, mm can have colnames names, 
metNames, class.}

\item{splitPattern}{character, splitPattern is the pattern which separates 
elements and precursor m/z}

\item{splitIndMZ}{numeric, the position of the precursor m/z in the 
character string concerning separation by splitPattern}

\item{splitIndRT}{numeric or NULL, the position of the retention time in the 
character string concerning separation by splitPattern, if NULL
the retention time will be the mean of all retention time in the 
pcgroup}

\item{names}{logical, should names be retrieved? If set to TRUE, convert2MSP
will access the column "names" in mm which contains the names of the 
metabolites}

\item{metNames}{logical, should names of metabolites be retrieved? 
If set to TRUE, convert2MSP will access the column "metNames" in mm 
which contains the names of the metabolites}

\item{class}{logical, should classes of metabolites be retrieved? If set to 
TRUE, convert2MSP will access the column "class" in mm which contains
the names of the metabolites}
}
\value{
convert2MSP returns an object of class MSP
}
\description{
Convert deconvoluted matrix into MSP format
}
\details{
Creates a data entry for each precursor ion. Each entry in the 
return object has the following information: NAME, RETENTIONTIME, 
     PRECURSORMZ, METABOLITENAME, ADDUCTIONNAME, Num Peaks and a list of 
     fragments together with their intensities. convert2MSP will access
     the column name 'name', 'metNames' and 'class', respectively, 
     if arguments are set to TRUE. In the fourth column there has 
     to information about the precursor ion which will be assessed by 
     splitPattern and splitInd. E.g. items in the fourth column can be in 
     the form of '1_163.23', which has to be accessed by setting 
     \code{splitPattern = "_"} and \code{splitInd = 2} to access the m/z 
     value of the precursor ion (here: 162.23).
}
\examples{
data("sd02_deconvoluted", package = "MetCirc")
convert2MSP(mm = sd02_deconvoluted, splitPattern = "_", splitIndMZ = 1, 
 splitIndRT = 2, names = FALSE, metNames = FALSE, class = FALSE)
}
\author{
Thomas Naake, \email{thomasnaake@googlemail.com}
}

