# Dashboard e visualizações

## Objetivo

O painel deve permitir responder rapidamente às principais perguntas de negócio: abandono de carrinho, produtos impactados, regiões com maior volume e tendência temporal.

## Visualizações sugeridas

### 1. KPIs principais

- total de carrinhos abandonados;
- total de itens abandonados;
- valor não faturado;
- média de itens por carrinho.

### 2. Top produtos

- gráfico de barras com os produtos mais abandonados;
- gráfico com valor não faturado por produto;
- filtro por categoria e mês.

### 3. Duplas de produtos

- tabela de top 10 pares de produtos que aparecem juntos;
- pode ser representado em matriz ou gráfico de treemap.

### 4. Tendências temporais

- linha por mês;
- linha por dia;
- comparação com o mês anterior.

### 5. Geografia

- mapa por UF;
- ranking de estados por abandonos.

### 6. Produtos novos

- tabela com produto novo e volume no primeiro mês;
- comparação com outros produtos do mesmo segmento.

## Estrutura de filtros

- mês;
- ano;
- categoria;
- produto;
- estado;
- metodo de pagamento;
- status do carrinho.

## Sugestão de visualização em Power BI

- página 1: visão executiva (KPI e top 10 produtos)
- página 2: análise temporal (mês a mês)
- página 3: geografia e estados
- página 4: produtos novos e pares de produtos

## Sugestão de visualização em Looker Studio

- gráfico de barras para produtos mais abandonados;
- gráfico de linha para tendência mensal;
- mapa geográfico por UF;
- tabela de top 10 produtos e top 10 pares; 
- filtro por data e categoria.

## Entregável final

O painel deve permitir que o usuário tenha resposta em segundos para as seguintes perguntas:

- quais produtos mais tiveram carrinhos abandonados;
- quais pares de produtos aparecem juntos em maior volume;
- qual a evolução do abandono ao longo do tempo;
- quais estados merecem atenção;
- quanto o negócio deixou de faturar por produto e por período.

