## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)



## ----eval=TRUE----------------------------------------------------------------
library(DrugSim2DR)
# Obtain the example data
GEP<-Gettest("GEP")
label<-Gettest("label")
# Calculate the zscore
DEscore<-CalDEscore(GEP,label)
head(DEscore[1:5,])

## ---- eval=FALSE--------------------------------------------------------------
#  # Calculate the centrality score of drugs
#  drug_similarity<-DrugSimscore(DEscore,nperm = 0)
#  ###view first ten drugs result
#  drug_similarity[1:5,]
#  

## ----echo=FALSE---------------------------------------------------------------
###Get the result of this function
drug_similarity<-Gettest("drug_drug")
drug_similarity[1:5,]

## ---- eval=FALSE--------------------------------------------------------------
#  # Calculate the centrality score of drugs
#  drug_centrality<-DrugReposition(DEscore,nperm = 100,r = 0.9)
#  ###view first ten drugs result
#  drug_centrality[1:5,]
#  

## ----echo=FALSE---------------------------------------------------------------
###Get the result of this function
drug_centrality<-Gettest("drug_centrality")
drug_centrality[1:5,]

## ----message=FALSE,results="hide"---------------------------------------------
# load depend package
require(ChemmineR)
require(rvest)

# plot the chemical structure 
plotDrugstructure("DB00780")


## ----message=FALSE------------------------------------------------------------
# load depend package
library('pheatmap')
# plot the heatmap 
plotTargetheatmap("DB00780",GEP,label,cluster.rows=FALSE,cluster.cols=FALSE,bk=c(-2.4,2.3),
                          show.rownames=TRUE,show.colnames=FALSE,ann_colors=c("#FFAA2C","#2CBADA"),
                          col=c("#2A95FF","#FF1C1C"))


## ----message=FALSE,fig.height=5,fig.width=10----------------------------------
# load depend package
library(igraph)
# plot the heatmap 
plotDruglink("DB02721","DB01213",i=5)


