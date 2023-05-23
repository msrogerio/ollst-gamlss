
setwd("/media/marlon-rogerio/HD_Backup/MacOS/Documentos/Mestrado/Estudo Orientado/Dados")
source.with.encoding("OLLST-gamlss.R", encoding = 'UTF-8')

dados = read.table("LV-C.txt", h = T)

df <- dados

## Histograma para os níves de carbono + represetação da pdf da Normal 
histDist(df$C, family = "NO", main="Frequência de Carbono", ylab="Y", xlab = "Carbono")

## Histograma para os níves de carbono + represetação da pdf da ODD LOG-LOGISTIC SKEW T-STUDENT 
histDist(df$C, family = "OLLST", main="Frequência de Carbono", ylab="Y", xlab = "Carbono")
