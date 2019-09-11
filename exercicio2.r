# Lendo o arquivo insurance.csv, stringsAsFactors = TRUE.

insurance <- read.csv("insurance.csv", stringsAsFactors = TRUE)
str(insurance)

summary(insurance$expenses)

# Criando um histograma estatístico das amostras pelas despesas: dados numerais

hist(insurance$expenses)

# Criando tabelas para dados nominais

table(insurance$region)
table(insurance$sex)
table(insurance$smoker)

# Medida de correlação dos dados abaixo: Valores com altas correlações não devem estar juntos, não trazem informação

cor(insurance[c("age", "bmi", "children", "expenses")])

#Realizando e analisando o algoritmo:
insmodel <- lm(expenses ~ children + age + bmi + smoker + region, data = insurance)
summary(insmodel)

