windowsFonts(times = windowsFont("CMU Serif Roman")) 


attach(read.table("recorridos4.csv", header = TRUE,sep = ","))



orden = c(table(dia)[3],table(dia)[4],table(dia)[5],table(dia)[2],table(dia)[7],table(dia)[6],table(dia)[1])


library(RColorBrewer)
barplot(family = "times", main = "Distribución de recorridos según los dias de la semana",
        orden,
        names.arg = c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"), 
        col=brewer.pal(7, "Set2"),  ylim = c(0,90),xlab = "Día de la semana",
        ylab = "Cantidad de viajes", border = FALSE, space = 0.05, yaxt = "n")
axis(2, at = seq(0, 90, 10), las = 1)



n=length(dia)
(tablaFrecAbs = orden)
(tablaFrecRel = tablaFrecAbs/n)
(tablaFrecRelPct = (tablaFrecAbs/n)*100)
(tablaFreAbsCum = cumsum(tablaFrecAbs))

