
setwd("/media/marlon-rogerio/HD_Backup/MacOS/Documentos/Mestrado/Estudo Orientado/Dados")
source.with.encoding("OLLST-gamlss.R", encoding = 'UTF-8')

dados = read.table("LV-C.txt", h = T)

df <- dados
C <- df$C
trat <- factor(df$Trat)
epoca <- df$Epoca
prof <- df$Prof

ollst_family <-gamlss(C~re(fixed=~trat+epoca, random=~1|trat), data = dados, family = "OLLST")

summary(ollst_family)
r = residuals(ollst_family)
my.hnp <- hnp(r,halfnormal = F, print.on=TRUE, plot=FALSE)
plot(my.hnp, main="(a2)", xlab="Half-ollst scores",
     ylab="Resíduos de quantis", legpos="topleft")




