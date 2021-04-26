windowsFonts(times = windowsFont("CMU Serif Roman")) 


attach(read.table("recorridos4.csv", header = TRUE,sep = ","))



library(RColorBrewer)
barplot(family = "times", main = "Agrupacion de estaciones de origen por cantidad de viajes",
        (-sort(-table(direccion_estacion_origen))), 
        col=brewer.pal(7, "Set2"),  ylim = c(0,15),xlab = "Estaciones",
        ylab = "Cant. de viajes", border = FALSE, space = 0.05, xaxt = "n", yaxt = "n")
axis(2, at = seq(0, 15, 1), las = 1)



n=length(dia)
(tablaFrecAbs = orden)
(tablaFrecRel = tablaFrecAbs/n)
(tablaFrecRelPct = (tablaFrecAbs/n)*100)
(tablaFreAbsCum = cumsum(tablaFrecAbs))

