# Guia de dashboard - Looker Studio / Power BI

## Visão geral

A solução foi pensada para funcionar em dois formatos:

1. **Looker Studio** - mais simples de publicar e compartilhar online
2. **Power BI** - mais robusto para análise corporativa e painéis executivos

Como a prova pede um dashboard, a melhor forma é propor uma estrutura funcional em ambas as versões, mesmo que o modelo final seja implementado de acordo com a ferramenta disponível do cliente.

---

## Estrutura do dashboard recomendado

### 1. Página executiva

- KPI de carrinhos abandonados
- KPI de itens abandonados
- KPI de valor não faturado
- Top 10 produtos
- Top 10 estados

### 2. Página de produtos

- ranking por produto
- análise de crescimento de abandono
- comparação mensal
- produtos novos e primeiro mês de lançamento

### 3. Página geográfica

- mapa por UF
- ranking por estado
- filtro por cidade/região

### 4. Página temporal

- evolução diária e mensal
- comparação com mês anterior
- variação de valor não faturado

---

## Métricas centrais

- `quantidade_carrinhos_abandonados`
- `quantidade_itens_abandonados`
- `valor_nao_faturado`
- `taxa_abandono_por_produto`
- `crescimento_abandono_mes`

---

## Implementação em Looker Studio

### Conectores sugeridos

- BigQuery
- PostgreSQL
- Google Sheets (para protótipo leve)

### Visualizações recomendadas

- gráfico de barras - top produtos
- gráfico de linha - tendência mensal
- mapa geográfico - estados
- tabela - produtos e valores
- cards com KPIs principais

### Filtros úteis

- mês
- produto
- categoria
- estado
- data

---

## Implementação em Power BI

### Estrutura visual sugerida

- page 1: visão geral executiva
- page 2: performance por produto
- page 3: regiões e map visual
- page 4: histórico temporal
- page 5: análise de produtos novos

### Indicadores sugeridos

- total de carrinhos abandonados
- total de itens abandonados
- valor total perdido
- crescimento do abandono por produto
- comparação de meses e dados por estado

### Modelagem recomendada

- usar a tabela fato como eixo principal
- estabelecer relações com as dimensões de produto, data e região
- criar medidas DAX para:
  - TotalCarrinhosAbandonados
  - TotalItensAbandonados
  - ValorNaoFaturado
  - CrescimentoAbandono

---

## Dashboards mockados com visual profissional

Como a prova não exige que o dashboard seja executado em produção, o melhor é deixar uma estrutura de dashboard em HTML com preview visual, além do guia para Power BI/Looker Studio.

Essa abordagem deixa a entrega muito mais forte, pois mostra que o candidato entende:
- a lógica analítica;
- as métricas;
- como as visões se conectam entre si;
- qual é o painel executivo ideal para o cliente.

