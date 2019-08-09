library(readxl)
library(dplyr)

inp <- "/home/dhjs/Documentos/R_projects/candidaturas_estatales/estados"
out <- "/home/dhjs/Documentos/R_projects/candidaturas_estatales/out"

names <- c("Apellido", "Nombre", "Sexo", "Partido", "Principio", "Distrito", "Circunscripción", "Propietario.Suplente")
year.1 <- c("1995", "1998", "2001", "2004", "2007", "2010", "2013") #Aguascalientes, Baja California
year.2 <- c("2009", "2012", "2015") #Campeche
year.3 <- c("1998", "2001", "2004", "2007", "2010", "2015") #Chiapas
year.4 <- c("1996", "1999", "2002", "2005", "2008", "2011", "2013") #Coahuila
year.5 <- c("1997", "2000", "2003", "2006", "2009", "2012", "2015") #Colima, Guanajuato, Jalisco, Morelos, San Luis Potosí
year.6 <- c("2000", "2003", "2006", "2009", "2012", "2015") #cdmx, edomex
year.7 <- c("1995", "1998", "2001", "2004", "2007", "2010") #Durango
year.8 <- c("1999", "2005", "2008", "2012") #Guerrero
year.9 <- c("1997", "1999", "2003", "2005", "2008", "2010", "2013") #Hidalgo
year.10 <- c("1995", "1998", "2001", "2007", "2011") #Michoacán
year.11 <- c("1991", "1994", "2000", "2003", "2006", "2009", "2012", "2015") #Nuevo León
year.12 <- c("2001", "2004", "2016") #Oaxaca
year.13 <- c("2001", "2004", "2008", "2010", "2013") #Puebla
year.14 <- c("1994", "1997", "2000", "2003", "2006", "2009") #Querétaro
year.15 <- c("2004", "2007", "2010", "2013") #Quintana Roo
year.16 <- c("2004", "2007", "2010", "2013", "2015") #Sinaloa
year.17 <- c("1994", "2000", "2003", "2006", "2009", "2012", "2015") #Sonora
year.18 <- c("1995", "1998", "2001", "2004", "2007", "2010", "2013", "2016") #Tamaulipas
year.19 <- c("1998", "2004", "2007", "2010", "2007", "2016") #Tlaxcala

ags <- data.frame()
x <- 1

for (x in 1:length(year.1)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Aguascalientes.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.1[x],
           estado = "Aguascalientes")
  ags <- bind_rows(ags, try)  
}

bc <- data.frame()
x <- 1

for (x in 1:length(year.1)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Baja-California.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.1[x],
           estado = "Baja California")
  bc <- bind_rows(bc, try)  
}

bcs <- read_excel(paste(inp, "Base-Candidatas-Baja-California-Sur.xlsx", sep = "/"))
bcs <- bcs[-1,]
colnames(bcs) <- names
bcs <- bcs %>% 
  mutate(year = "2011",
         estado = "Baja California Sur")

camp <- data.frame()
x <- 1

for (x in 1:length(year.2)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Campeche.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.2[x],
           estado = "Campeche")
  camp <- bind_rows(camp, try)  
}

chis <- data.frame()
x <- 1

for (x in 1:length(year.3)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Chiapas.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.3[x],
           estado = "Chiapas")
  chis <- bind_rows(chis, try)  
}

coah <- data.frame()
x <- 1

for (x in 1:length(year.4)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Coahuila.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.4[x],
           estado = "Coahuila")
  coah <- bind_rows(coah, try)  
}

col <- data.frame()
x <- 1

for (x in 1:length(year.5)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Colima.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.5[x],
           estado = "Colima")
  col <- bind_rows(col, try)  
}

cdmx <- data.frame()
x <- 1

for (x in 1:length(year.6)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Distrito-Federal.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.6[x],
           estado = "CDMX")
  cdmx <- bind_rows(cdmx, try)  
}

dug <- data.frame()
x <- 1

for (x in 1:length(year.7)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Durango.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.7[x],
           estado = "Durango")
  dug <- bind_rows(dug, try)  
}

edomex <- data.frame()
x <- 1

for (x in 1:length(year.6)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Estado-de-Mexico.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.6[x],
           estado = "edomex")
  edomex <- bind_rows(edomex, try)  
}

gto <- data.frame()
x <- 1

for (x in 1:length(year.5)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Guanajuato.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.5[x],
           estado = "Guanajuato")
  gto <- bind_rows(gto, try)  
}

gro <- data.frame()
x <- 1

for (x in 1:length(year.8)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Guerrero.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.8[x],
           estado = "Guerrero")
  gro <- bind_rows(gro, try)  
}

hgo <- data.frame()
x <- 1

for (x in 1:length(year.9)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Hidalgo.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.9[x],
           estado = "Hidalgo")
  hgo <- bind_rows(hgo, try)  
}

jal <- data.frame()
x <- 1

for (x in 1:length(year.5)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Jalisco.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.5[x],
           estado = "Jalisco")
  jal <- bind_rows(jal, try)  
}

mich <- data.frame()
x <- 1

for (x in 1:length(year.10)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Michoacán.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.10[x],
           estado = "Michoacán")
  mich <- bind_rows(mich, try)  
}

mor <- data.frame()
x <- 1

for (x in 1:length(year.5)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Morelos.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.5[x],
           estado = "Morelos")
  mor <- bind_rows(mor, try)  
}

nl <- data.frame()
x <- 1

for (x in 1:length(year.11)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Nuevo-León.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.11[x],
           estado = "Nuevo León")
  nl <- bind_rows(nl, try)  
}

oax <- data.frame()
x <- 1

for (x in 1:length(year.12)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Oaxaca.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.12[x],
           estado = "Oaxaca")
  oax <- bind_rows(oax, try)  
}

pue <- data.frame()
x <- 1

for (x in 1:length(year.13)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Puebla.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.13[x],
           estado = "Puebla")
  pue <- bind_rows(pue, try)  
}

qro <- data.frame()
x <- 1

for (x in 1:length(year.6)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Querétaro.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.6[x],
           estado = "Querétaro")
  qro <- bind_rows(qro, try)  
}

qroo <- data.frame()
x <- 1

for (x in 1:length(year.15)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Quintana-Roo.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.15[x],
           estado = "Quintana Roo")
  qroo <- bind_rows(qroo, try)  
}

slp <- data.frame()
x <- 1

for (x in 1:length(year.5)) {
  try <- read_excel(paste(inp, "Base-Candidatas-San-Luis-Potosí.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.5[x],
           estado = "San Luis Potosí")
  slp <- bind_rows(slp, try)  
}

sin <- data.frame()
x <- 1

for (x in 1:length(year.16)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Sinaloa-Final.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.16[x],
           estado = "Sinaloa")
  sin <- bind_rows(sin, try)  
}

son <- data.frame()
x <- 1

for (x in 1:length(year.17)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Sonora.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.17[x],
           estado = "Sonora")
  son <- bind_rows(son, try)  
}

tamps <- data.frame()
x <- 1

for (x in 1:length(year.18)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Tamaulipas.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.18[x],
           estado = "Tamaulipas")
  tamps <- bind_rows(tamps, try)  
}

tlax <- data.frame()
x <- 1

for (x in 1:length(year.19)) {
  try <- read_excel(paste(inp, "Base-Candidatas-Tlaxcala.xlsx", sep = "/"), sheet = x)
  try <- try[-1,]
  colnames(try) <- names
  try <- try %>% 
    mutate(year = year.19[x],
           estado = "Tlaxcala")
  tlax <- bind_rows(tlax, try)  
}

fin <- bind_rows(ags, bc, bcs, camp, cdmx, chis, coah, col, dug, edomex, gto, gro, hgo, jal, mich, mor, nl, oax, pue, qro, qroo, slp, sin, son, tamps, tlax)

write.csv(fin, paste(out, "candidaturas_estatales.csv", sep = "/"), row.names = F, fileEncoding = "WINDOWS-1252")
