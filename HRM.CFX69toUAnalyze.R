

#This self made script is intended for Melting Amplification Curve File
#exported directly from BIORAD'S CFX MANAGER v3.0 (or lesser)
#and to use it on https://dna.utah.edu/uv/uanalyze.html

HRM.CFX96toUAnalyze = function(x){
	tabla<-read.csv(file=x, header=TRUE,sep=",")
# Read table extension
	col_a<-dim(tabla)[2] 
	col_b<-which(colnames(tabla)=="Temperature")+1

# Separate columns

	temp<-tabla$Temperature
	melt<-tabla[,col_a:col_b]
	
# write mlt and tem files

	write.table(temp, file="temperature.tem", col.names=FALSE, row.names=FALSE, sep="\t", quote=FALSE)
	write.table(melt, file="melt_matrix.mlt", col.names=FALSE, row.names=FALSE, sep="\t", quote=FALSE)
# Remove vars employed
rm(col_a,col_b,temp,melt)

} 
