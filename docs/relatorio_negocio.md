# Relatório de negócio e insights esperados

## 1. Perguntas de negócio

A base analítica deve responder às perguntas abaixo:

### Produtos mais abandonados

- Quais produtos tiveram maior quantidade de carrinhos abandonados?
- Quais produtos têm maior impacto financeiro em valor não faturado?

### Duplas de produtos em conjunto

- Quais pares de produtos apareceram juntos com maior frequência em carrinhos abandonados?
- Isso pode indicar associação de compra, complementaridade ou intenção de kit.

### Produtos com aumento de abandono

- Há produtos cujo número de abandonos aumentou em relação ao mês anterior?
- Representa falha de conversão, problemas de precificação ou logística?

### Produtos novos

- Quais itens foram lançados recentemente e tiveram carrinhos abandonados no primeiro mês?
- Isso ajuda a validar a adoção inicial do produto.

### Estados com mais abandonos

- Qual estado concentra maior número de abandonos?
- Há diferença entre regiões mais populosas e regiões com menor conversão?

### Relatório produto x mês

- Quantidade de carrinhos abandonados por produto por mês;
- quantidade de itens abandonados;
- valor não faturado.

### Relatório por data

- quantidade de carrinhos abandonados por dia;
- quantidade de itens abandonados;
- valor não faturado.

## 2. Estratégia de resposta

### 2.1 Segmentação por produto

O time de negócio consegue priorizar produtos com alto volume de abandono e grande impacto financeiro. Em geral, itens com maior valor e maior recorrência de abandono merecem atenção mais imediata.

### 2.2 Análise por região

O mapa ou relatório por estado permite identificar padrões geográficos. Pode existir correlação entre frete, tempo de entrega e desistência.

### 2.3 Análise temporal

O comportamento por mês e por data mostra se o problema está esporádico ou recorrente. Isso ajuda a validar se determinadas campanhas, promoções ou mudanças de logística influenciam a conversão.

### 2.4 Análise de relacionamento entre produtos

A análise de pares de produtos indica se uma compra costuma acontecer junto com outra. Isso pode sugerir cross-sell, bundles, ou ajustes no checkout.

## 3. Indicadores recomendados para o dashboard

- `% abandono por produto`
- `valor perdido por produto`
- `carrinhos abandonados por mês`
- `itens abandonados por mês`
- `estado com maior volume de abandonos`
- `top 10 pares de produtos`
- `crescimento do abandono x mês anterior`

## 4. Leitura de negócio

O ideal não é apenas observar o volume de abandonos, mas entender a combinação de:

- volume;
- valor;
- tempo;
- canal e região;
- impacto de produtos novos.

Quanto maior o número de variáveis capturadas no modelo, melhor a resposta para o time comercial e de operação.

