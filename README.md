# Aplicação de Técnicas de Aprendizagem de Maquina Utilizando Software R

### - Curso ministrado pelo professor Mario Noronha Neto no Instituto Federal de Santa Catarina, campus São josé

- Livro: Brett Lantz. Machine Learning with R. Segunda edição.

# Verificar:

- Cursera: Introdução Machine Learning - Andrew Ng

# Funcionamento:

- Abstração: Transformação dos dados em modelo matemático.
- Generalização: Utiliza dados abstraídos para gerar inferências generalizadas.
- Avaliação: Teste e verificação do desempenho do modelo.

### Isto envolve, na prática:

- Coleta de dados.
- Análise e preparação dos dados.
- Treinamento do modelo.
- Avaliação do modelo.
- Melhorias do modelo.

# Algoritmos vistos:

## k-nn: Classificação nearest neighbor
No treinamento, classifica conforme distância entre grupos, plotando em um plano kD os dados conforme a sua tabela, inferindo sobre as saídas específicas. Cada dado deve ser atribuido um grupo, que será resultado do experimento ao final.

Um indivíduo novo que entra é analisado através da expressão de distância:

    dist(p,q) = sqrt((p1-q1)^2 + (p2-q2)^2 .... + (pn - qn)^2)

Sabendo a distância em relação à todos os outros indivíduos do experimento, é possível saber à qual grupo o novo indivíduo pertence, assim classificando-o.

Valores mais altos para o k dão planos com maiores dimensões e criam curvas de classificação mais gerais e com mais capacidades. Entretanto aumentam a complexidade do experimento.

É necessário atribuir valores numéricos para variáveis nominais, já que o algoritmo usa distância.

A normalização dos dados pode ser feita por:

    Xn' = (Xn - min(X)/(max(X) - min(X))))

[Exemplo de código comentado](exercicio1.r)



