windowsFonts(times = windowsFont("CMU Serif Roman")) 


attach(read.table("usuarios4.csv", header = TRUE,sep = ",", colClasses = c("integer", "factor","integer")))

library(RColorBrewer)
barplot(family = "times", main = "Distribución de generos sobre la cant. total de usuarios",
        table(genero_usuario), names.arg = c("Femenino", "Masculino", "Otro"), 
        col=brewer.pal(3, "Accent"), ylim = c(0, 50), xlab = "Géneros",
        ylab = "Cantidad de usuarios", border = FALSE, space = 0.05)


n=length(id_usuario)
tablaFrecAbs = table(genero_usuario)
(tablaFrecRel = tablaFrecAbs/n)
(tablaFrecRelPct = (tablaFrecAbs/n)*100)