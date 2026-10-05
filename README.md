# CantuStore - Projeto de Carrinho Abandonado

## Visão geral

Este projeto foi desenvolvido para apoiar a análise de carrinho abandonado na CantuStore, com foco em identificar padrões de desistência, produtos mais afetados, regiões com maior volume de abandono e tendências temporais.

A solução foi estruturada em modelo de dados dimensional, com foco em:

- produtos com maior volume de abandono;
- combinações de produtos abandonados em conjunto;
- comparação de abandono por período;
- desempenho de produtos novos no primeiro mês de lançamento;
- regiões com maior impacto;
- relatórios mensais e diários por produto e por data.

## Objetivo do negócio

A área responsável precisa responder questionamentos de negócio para reduzir desistências e melhorar a conversão. Os indicadores principais incluem:

- produtos mais abandonados;
- pares de produtos mais frequentemente abandonados juntos;
- produtos com aumento de abandono;
- produtos recém-lançados e volume de abandonos no primeiro mês;
- estados com maior taxa/volume de abandono;
- relatório mensal de carrinhos abandonados, itens abandonados e valor não faturado;
- relatório diário com os mesmos indicadores.

## Modelagem proposta

O modelo foi remodelado para o padrão estrela, com uma tabela fato central e dimensões de contexto. A abordagem permite análise fácil em ferramentas BI e boa performance em consultas analíticas.

### Fato principal

- `fato_carrinho_abandonado`

### Dimensões

- `dim_produto`
- `dim_cliente`
- `dim_endereco`
- `dim_regiao`
- `dim_data`
- `dim_pagamento`
- `dim_metodo_pagamento`
- `dim_carrinho`

## Estrutura do repositório

- `sql/` - scripts SQL de modelagem, ETL e consultas analíticas
- `dashboard/` - documentação do painel e orientações para Power BI / Looker Studio
- `docs/` - arquitetura e análise de negócio
- `data/` - descrição da estrutura esperada e templates de dados

## Como executar

1. Crie o schema conforme os scripts em `sql/`.
2. Carregue os dados em tabelas dimensionalizadas.
3. Utilize as queries em `sql/04_queries_dashboard.sql` para alimentar o dashboard.
4. Construa o painel com base nos indicadores abaixo.

## Indicadores principais

- quantidade de carrinhos abandonados;
- quantidade de itens abandonados;
- valor não faturado;
- média de itens por carrinho abandonado;
- taxa de abandono por produto e região;
- crescimento/momento de aumento de abandono por produto.

## Dashboard recomendado

Os painéis podem ser montados em Power BI ou Looker Studio. Estrutura sugerida:

- KPI cards: total de carrinhos abandonados, itens, valor não faturado
- gráfico de barras por produto
- gráfico de linhas por mês
- mapa por estado
- tabela de produtos com crescimento de abandono
- matriz de pares de produtos abusados em conjunto

## Observações de negócio

A análise de abandonos não deve ser observada apenas em volume, mas também em relação ao valor gerado e ao contexto do cliente. Produtos com baixo volume mas alto valor perdido devem receber atenção prioritária. Produtos novos precisam ser avaliados com cuidado, principalmente no primeiro mês de lançamento, quando o comportamento de compra pode ainda estar em consolidação.

## Autoria

Projeto para entrega de estudo e demonstração de modelagem de dados e análise de negócio na CantuStore.

---

Se precisar, este repositório pode ser expandido com:

- preparação de dados em Python;
- pipeline ETL em dbt;
- dashboard em Power BI .pbix;
- data quality checks;
- documentação de requisitos para stakeholders.

