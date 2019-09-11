
# ----------------------------------- Lendo os dados:

teens <- read.csv("snsdata.csv");
str(teens)

# --------------------------------- Explorando os dados

# Quanto à gênero:
table(teens$gender)
table(teens$gender, useNA ="ifany")

# Quanto à idade:
summary(teens$age)

# Os dados da idade apresentam problemas, pode-se limitar os dados com:
teens$age <- ifelse(teens$age >= 13 & teens$age <20,
                   teens$age, NA)
summary(teens$age)

# Os dados com idade NA podem ser substituido pela média da idade para ajudar a compactação:

ave_age <- ave(teens$age, teens$gradyear, FUN = function(x) mean(x, na.rm = TRUE))
teens$age <- ifelse(is.na(teens$age), ave_age, teens$age)
summary(teens$age)

# Os dados de gênero apresentam problemas com NAs, pode-se mudar isso fazendo:

teens$female <- ifelse(teens$gender == "F" & 
                         !is.na(teens$gender), 1, 0)

teens$no_gender <- ifelse(is.na(teens$gender), 1, 0)

table(teens$female)
table(teens$no_gender)

# ---------------------------------------- Aplicando algorítimo k-means

library(stats)

# Escalando o modelo para média zero e desvio padrão unitário
interests <- teens[5:40]
interests_z  <- as.data.frame(lapply(interests, scale))

# Colocando a semente do dado aleatório e realizando o kmeans com k = 5
set.seed(2345)
teen_clusters <- kmeans(interests_z, 5)

# ------------------------------------------ Exokirabdi is clusters

# Quantidade de adolescentes em cada cluster
teen_clusters$size

# Analisando as centróides com relação à cada grupo, valores maiores indicam maior importância para a categoria
teen_clusters$centers

# rotulando os clusers
teens$cluster <- teen_clusters$cluster
teens[1:5, c("cluster", "gender", "age", "friends")]

