windowsFonts(times = windowsFont("CMU Serif Roman")) 


attach(read.table("usuarios4.csv", header = TRUE,sep = ",", colClasses = c("integer", "factor","integer")))


library(RColorBrewer)


n=length(id_usuario)
tablaFrecAbs = table(edad_usuario)
(tablaFrecRel = tablaFrecAbs/n)
(tablaFrecRelPct = (tablaFrecAbs/n)*100)
hola = rbind(tablaFrecAbs, tablaFrecRelPct)
hist(family = "times",edad_usuario, xlab = "Rangos etarios (Años)",xlim = c(10, 75),ylim = c(0, 25), 
     breaks = seq(10, 75, 5), col=brewer.pal(3, "Accent")[2], ylab = "Cantidad de usuarios",
     main = "Distribución de usuarios por rango etario",xaxt = "n")
axis(1, at = seq(10, 75, 5), las = 1)



edad = cut(edad_usuario, c(seq(15, 70, by = 5), Inf), include.lowest = TRUE)
frecuenciaAbsoluta = table(edad)
frecuenciaRel = frecuenciaAbsoluta/sum(frecuenciaAbsoluta)
frecuenciaRelPorc = frecuenciaRel * 100