HRM.CFX69toUAnalyze = function(x){
	tabla<-read.csv(file=x, header=TRUE,sep=",")
# Lectura de la extension de la tabla	
	col_a<-dim(tabla)[2] 
	col_b<-which(colnames(tabla)=="Temperature")+1

# Despues separa las tablas de interes

	temp<-tabla$Temperature
	melt<-tabla[,col_a:col_b]
# Escribe los archivos .mlt y .tem

	write.table(temp, file="temperature.tem", col.names=FALSE, row.names=FALSE, sep="\t", quote=FALSE)
	write.table(melt, file="melt_matrix.mlt", col.names=FALSE, row.names=FALSE, sep="\t", quote=FALSE)
# Fin de la minifuncion
rm(col_a,col_b,temp,melt)

} 
