# Arquitetura da solução

## 1. Contexto de negócio

O problema central é o abandono de carrinho. Em e-commerce, isso representa perda direta de receita e sinaliza que o cliente passou por etapas de intenção de compra, mas não concluiu a transação.

A análise de abandono precisa considerar:

- quais produtos foram mais afetados;
- que combinações de produtos aparecem juntas em carrinhos abandonados;
- como a desistência se distribui por região;
- qual o comportamento por mês e por data;
- o impacto financeiro do valor não faturado.

## 2. Modelo dimensional

A solução foi modelada em arquitetura estrela para facilitar a análise exploratória e a criação de dashboards.

### 2.1 Tabela fato

`fato_carrinho_abandonado` 

Campos sugeridos:

- `carrinho_id`
- `cliente_id`
- `produto_id`
- `regiao_id`
- `data_abandono_id`
- `pagamento_id`
- `quantidade_itens`
- `valor_total_produtos`
- `valor_nao_faturado`
- `flag_abandonado`
- `mes_lancamento_produto`
- `categoria_produto`

### 2.2 Dimensões

#### `dim_produto`

- `produto_id`
- `nome_produto`
- `categoria`
- `subcategoria`
- `marca`
- `data_lancamento`
- `preco_unitario`

#### `dim_cliente`

- `cliente_id`
- `nome_cliente`
- `estado`
- `cidade`
- `segmento`

#### `dim_regiao`

- `regiao_id`
- `estado`
- `cidade`
- `uf`

#### `dim_data`

- `data_id`
- `data_completa`
- `ano`
- `mes`
- `mes_ano`
- `semana`
- `dia`

#### `dim_pagamento`

- `pagamento_id`
- `metodo_pagamento`
- `bandeira`
- `parcelas`
- `status`

#### `dim_carrinho`

- `carrinho_id`
- `quantidade_itens` 
- `valor_total` 
- `status`

## 3. Raciocínio de modelagem

A tabela fato central concentra a métrica principal de desempenho: o abandono. Isso permite:

- somar carrinhos abandonados;
- somar itens abandonados;
- somar valor não faturado;
- segmentar por cliente, produto, região e tempo.

As dimensões descrevem o contexto em que o abandono aconteceu. A combinação delas permite filtros e visualizações mais ricas e mais fáceis para o time de negócio.

## 4. Regras de negócio utilizadas

### Carrinho abandonado

Um carrinho é considerado abandonado quando o cliente adiciona itens ao carrinho, mas não conclui a compra dentro do período de acompanhamento definido pela operação.

### Valor não faturado

Valor não faturado = soma do valor dos itens que entraram no carrinho e não resultaram em compra concluída.

### Primeiro mês de lançamento

Para produtos novos, a análise considera o período do primeiro mês de disponibilidade para compra.

## 5. KPIs sugeridos

- total de carrinhos abandonados;
- total de itens abandonados;
- valor não faturado total;
- média de itens por carrinho abandonado;
- top 10 produtos por abandono;
- top 10 estados por abandono;
- taxa de crescimento de abandono por produto;
- pares de produtos que aparecem juntos em carrinhos abandonados.

## 6. Observações

A modelagem reduz a necessidade de joins complexos no dashboard e melhora a leitura das métricas no painel executivo.

