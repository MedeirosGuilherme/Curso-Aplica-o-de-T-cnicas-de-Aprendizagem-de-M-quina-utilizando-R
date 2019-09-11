# Lendo arquivos wine.csv:

wineq <- read.csv("wine.csv", stringsAsFactors = TRUE)
str(wineq)

summary(wineq)

# Criando histograma estatístico da wineq

hist(wineq$Price)

# Medindo correlação entre as categorias

cor(wineq[c("Year", "Price", "WinterRain", "AGST", "HarvestRain", "Age", "FrancePop")])

# Realizando e analisando o algorítmo e sua saída:

wineModelFull <- lm(Price ~ Year + WinterRain + AGST + HarvestRain + Age + FrancePop, data = wineq)
summary(wineModelFull)
wineModelFull

# Idade não apresentou coeficiente, retirando da amostra:

wineModelAgeless <- lm(Price ~ Year + WinterRain + AGST + HarvestRain + FrancePop, data = wineq)
summary(wineModelAgeless)
wineModelAgeless

