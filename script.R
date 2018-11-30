library(caret)
library(r2pmml)

setwd("C:/Users/Mateus/Desktop/Testes Wifi") # Salvar na pasta
filename <- "teste1.txt"
dataset <- read.csv(filename, header=FALSE)
colnames(dataset) <- c("SSID","POTENCIA","LOCAL","LATENCIA","VELOCIDADE","NUM_TESTE","TIPO_TESTE")

# Listar Classes existentes
levels(dataset$Local)


# Ocorrência de cada classe
percentage <- prop.table(table(dataset$Local)) * 100
cbind(freq=table(dataset$Local), percentage=percentage)


# Estatísticas sobre o dataset
summary(dataset)
	
# Separar o dataset em entradas e saidas(classes)
velocidade <- dataset[,5]
y <- dataset[,3]

# Diagrama de Caixa

featurePlot(x=velocidade, y=y, plot="box" ,las = 1)
title(main="Velocidade",ylab="teste")
boxplot(velocidade~y, notch=TRUE,varwidth = TRUE, horizontal = TRUE, las = 1)
par(mar=c(5,8,4,1)+1)
