library(readxl)
library(dplyr)

inp <- "/home/dhjs/Documentos/R_projects/candidaturas_estatales/estados"
out <- "/home/dhjs/Documentos/R_projects/candidaturas_estatales/out"

names <- c("Apellido", "Nombre", "Sexo", "Partido", "Principio", "Distrito", "Circunscripción", "Propietario.Suplente")
year.1 <- c("1995", "1998", "2001", "2004", "2007", "2010", "2013")

ags.fin <- data.frame()

x <- 1

for (x in 1:length(year.1)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Aguascalientes.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.1[x],
           estado = "Aguascalientes")
  ags.fin <- bind_rows(ags.fin, try)  
}

#write.csv(ags.fin, paste(out, "Aguascalientes.csv", sep = "/"), row.names = F, fileEncoding = "WINDOWS-1252")