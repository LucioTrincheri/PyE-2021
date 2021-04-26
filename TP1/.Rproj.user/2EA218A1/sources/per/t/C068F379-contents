windowsFonts(times = windowsFont("CMU Serif Roman")) 


attach(read.table("recorridos4.csv", header = TRUE,sep = ","))

library(RColorBrewer)


n=length(id_usuario)
duracion_recorrido = sort(duracion_recorrido)
duracion_recorrido = duracion_recorrido[-length(duracion_recorrido)]
tablaFrecAbs = table(duracion_recorrido)
(tablaFrecRel = tablaFrecAbs/n)
(tablaFrecRelPct = (tablaFrecAbs/n)*100)
hola = rbind(tablaFrecAbs, tablaFrecRelPct)
hist(family = "times",duracion_recorrido, xlab = "Rangos etarios (Años)",xlim = c(0, 19000), ylim = c(0, 250), 
     breaks = seq(0, 19000, 1000), col=brewer.pal(3, "Accent")[2], ylab = "Cantidad de usuarios",
     main = "Distribución de usuarios por rango etario",xaxt = "n")
axis(1, at = seq(0, 19000, 1000), las = 1)


boxplot(duracion_recorrido, horizontal = TRUE)

edad = cut(duracion_recorrido, c(seq(15, 70, by = 5), Inf), include.lowest = TRUE)
frecuenciaAbsoluta = table(edad)
frecuenciaRel = frecuenciaAbsoluta/sum(frecuenciaAbsoluta)
frecuenciaRelPorc = frecuenciaRel * 100