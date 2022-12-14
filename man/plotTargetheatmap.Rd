% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotTargetheatmap.R
\name{plotTargetheatmap}
\alias{plotTargetheatmap}
\title{plotTargetheatmap}
\usage{
plotTargetheatmap(drugid,ExpData,label,significance=FALSE,
cluster.rows=FALSE,cluster.cols=FALSE,bk=c(-2.4,2.3),show.rownames=TRUE,
show.colnames=FALSE,ann_colors=c("#FFAA2C","#2CBADA"),col=c("#2A95FF","#FF1C1C"))
}
\arguments{
\item{drugid}{The drugbank ID of a drug.}

\item{ExpData}{A gene expression profile of interest (rows are genes, columns are samples).}

\item{label}{A character vector consists of "0" and "1" which represent sample class in the gene expression profile. "0" means normal sample and "1" means disease sample.}

\item{significance}{This parameter controls whether the p-value of differential expression is displayed.}

\item{cluster.rows}{Logical value that represents whether row clustering is used.}

\item{cluster.cols}{Logical value that represents whether col clustering is used.}

\item{bk}{This parameter adjusts the range of values displayed by the color bar.}

\item{show.rownames}{This parameter controls whether row names are displayed.}

\item{show.colnames}{This parameter controls whether column names are displayed.}

\item{ann_colors}{Vector of colors used to define groups.}

\item{col}{Vector of colors used in the heatmap.}
}
\value{
A heat map of drug targets expression.
}
\description{
The function "plotTargetheatmap" is used to plot a heat map of drug targets expression.
}
\examples{
# Obtain the example data
GEP<-Gettest("GEP")
label<-Gettest("label")
# Run the function
plotTargetheatmap("DB00780",GEP,label)
}
