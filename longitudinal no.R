setwd("/media/marlon-rogerio/HD_Backup/MacOS/Documentos/Mestrado/Estudo Orientado/Dados")
source.with.encoding("OLLST-gamlss.R", encoding = 'UTF-8')

dados = read.table("LV-C.txt", h = T)

df <- dados
C <- df$C
trat <- factor(df$Trat)
epoca <- df$Epoca
prof <- df$Prof

normal_family <-gamlss(C~re(fixed=~trat+epoca, random=~1|trat), data = dados, family = "NO")
summary(normal_family)
r = residuals(normal_family)
my.hnp <- hnp(r,halfnormal = F, print.on=TRUE, plot=FALSE)
plot(my.hnp, main="(a1)", xlab="Half-normal scores",
     ylab="Resíduos de quantis", legpos="topleft")