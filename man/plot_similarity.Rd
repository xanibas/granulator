% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_similarity.R
\name{plot_similarity}
\alias{plot_similarity}
\title{Plot reference profile similariy matrix}
\usage{
plot_similarity(sigMatrix)
}
\arguments{
\item{sigMatrix}{Signature matrix: a data frame or a named list of data frames.
Each signature matrix should be a genes (rows) by cell types (columns) data
frame containing TPM-normalized gene expression values of signature genes.}
}
\value{
Plot showing the Kendall rank correlations similariy matrix.
}
\description{
\code{plot_similarity} plots cell type similarity matrix by
computing the Kendall rank correlations between cell type expression profiles.
Kendall rank correlation is used to test the similarities in the ordering of data 
when it is ranked by quantities, and  provides a less inflated measure of accuracy 
than Pearson correlation by accounting for ties in the data.
}
\examples{
# load demo PBMCS data
load_ABIS()

# generate list of reference profiles to be tested
sigMatrix <- list(sig1 = sigMatrix_ABIS_S0, 
sig2 = sigMatrix_ABIS_S2)

# plot similarity
plot_similarity(sigMatrix = sigMatrix)

}
\author{
Vincent Kuettel, Sabina Pfister
}
