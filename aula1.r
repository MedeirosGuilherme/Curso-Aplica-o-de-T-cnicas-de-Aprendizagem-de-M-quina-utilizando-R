

#-------------------------------criando vetores

subject_name <- c("John Doe", "Jane Doe", "Steve Graves")
temperature <- c(98.1, 98.6, 101.4)
flu_status <- c(FALSE, FALSE, TRUE)

# acessando vetores: Segundo elemento
temperature[2]

## Exemplo de acessando multiplos itens no vetor.
# Incluindo itens de 2 à 3
temperature[2:3]

# Excluindo item 2 usando o sinal de menos
temperature[-2]

# Usando o vetor para indicar se deve incluir o item ou não
temperature[c(TRUE, FALSE, TRUE)]


##-------------------------------- CRIANDO FATORES


# Gerando fator gênero:

gender <- factor(c("MALE","FEMALE", "MALE"))
gender #considera os dados colocados como todos os níveis possíveis


# Adicoinando tipo sanguíneo como fator:

blood <- factor(c("O", "AB", "A"), #tipos sanguineos do grupo
                    levels = c("A","B","AB","O")) #todos os níveis possíveis

blood

# Adicionando fatores ordenados

symptons <- factor(c("SEVERE", "MILD", "MODERATE"),
                   levels = c("MILD", "MODERATE", "SEVERE"),
                   ordered = TRUE)
symptons

# Checando os sintomas maiores do que moderados no fator sintomas:

symptons > "MODERATE"


##------------- CRIANDO LISTAS

i = 1:4

subject1 <- list(fullname = subject_name[1],
                 temperature = temperature[1],
                 flu_status = flu_status[1],
                 gender = gender[1],
                 blood = blood[1],
                 symptons = symptons[1])

subject1

# pegando um valor na lista:

subject1$temperature


## --------------- CRIANDO DATAFRAME

pt_data <- data.frame(subject_name, temperature, flu_status, gender, blood, symptons, stringsAsFactors = FALSE)

pt_data

pt_data$symptons>"MODERATE"


# Acessando dataframes:

pt_data[c("subject_name", "symptons")] #coluna por label



















