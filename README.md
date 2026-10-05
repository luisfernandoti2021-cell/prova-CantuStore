# Projeto CantuStore - Análise de Carrinho Abandonado

## Sobre este projeto

Este projeto foi desenvolvido como parte da minha prova de **Analista de Dados e BI** para a **CantuStore**. O objetivo foi resolver um problema real do e-commerce: entender por que os clientes abrem o carrinho, selecionam produtos e não concluem a compra.

A partir da estrutura de dados fornecida, desenvolvi uma solução completa de análise, começando pela modelagem dimensional e seguindo até a entrega de um dashboard executivo capaz de responder às perguntas mais relevantes da área responsável.

---

## Problema de negócio

O carrinho abandonado é um dos principais indicadores de perda de conversão em e-commerce. Em um negócio como a CantuStore, esse problema afeta diretamente:

- volume de vendas;
- receita potencial perdida;
- experiência de compra;
- desempenho de produtos e categorias;
- eficiência operacional e logística;
- percepção de valor do canal digital.

A análise foi pensada para responder onde a conversão está sendo perdida e como isso se distribui por produto, região, tempo e comportamento do cliente.

---

## Entrega desenvolvida

A entrega final inclui:

- modelagem em **Fato e Dimensão**;
- scripts SQL para criação das tabelas e carga inicial de dados;
- consultas analíticas para responder às perguntas de negócio;
- **dashboard visual entregue em HTML** para apresentação e exportação;
- documentação técnica e de negócio;
- estrutura preparada para apresentação final da solução.

Esta entrega foi construída para responder diretamente às exigências da prova e do cliente, e não apenas para descrever uma proposta teórica.

---

## Abordagem adotada

### 1. Entendimento do problema
Antes de iniciar a modelagem, identifiquei as perguntas mais importantes para o negócio:

- Quais produtos tiveram mais carrinhos abandonados?
- Quais combinações de produtos aparecem juntas com mais frequência?
- Quais produtos tiveram aumento de abandono ao longo do tempo?
- Quais produtos novos tiveram pior desempenho no primeiro mês?
- Quais estados apresentam maior volume de desistência?
- Qual foi o impacto financeiro em valor não faturado?
- Como o comportamento evoluiu por mês e por data?

### 2. Modelo dimensional
A melhor forma de responder isso em BI é usar o modelo **Fato e Dimensão**.

Essa estrutura foi escolhida porque:

- facilita agregação por categoria, região, período e produto;
- melhora a leitura do dashboard para o usuário final;
- reduz a complexidade de joins em consultas analíticas;
- deixa a solução fácil de evoluir conforme o volume de dados cresce.

### 3. Estrutura analítica

#### Tabela fato

- `fato_carrinho_abandonado`

Essa tabela concentra as métricas principais relacionadas ao abandono, como:

- `carrinho_id`
- `produto_id`
- `cliente_id`
- `regiao_id`
- `data_abandono_id`
- `pagamento_id`
- `quantidade_itens`
- `valor_total_produtos`
- `valor_nao_faturado`
- `flag_abandonado`

#### Dimensões

- `dim_produto`
- `dim_cliente`
- `dim_regiao`
- `dim_data`
- `dim_pagamento`
- `dim_carrinho`

---

## Indicadores principais entregues

A solução responde diretamente às seguintes análises de negócio:

1. Quais produtos tiveram mais carrinhos abandonados?
2. Quais pares de produtos aparecem juntos com mais frequência?
3. Quais produtos aumentaram o abandono em relação ao mês anterior?
4. Quais produtos novos tiveram maior número de carrinhos abandonados no primeiro mês?
5. Quais estados tiveram mais abandonos?
6. Qual foi o valor total não faturado?
7. Como os indicadores evoluíram por mês e por data?

---

## Dashboard entregue

O dashboard foi desenvolvido e está disponível no repositório em formato visual para análise executiva dos principais indicadores de carrinho abandonado.

### Arquivo entregue

- `dashboard/dashboard-preview.html`

Esse arquivo representa a entrega visual da solução e contempla:

- KPIs principais;
- top produtos por abandono;
- evolução temporal;
- análise geográfica;
- duplas de produtos mais abandonadas;
- produtos novos e primeiro mês de lançamento.

### Observação importante sobre os dados de exemplo

Os números apresentados no mockup do dashboard (carrinhos abandonados, itens abandonados, valores não faturados, etc.) são **valores ilustrativos utilizados exclusivamente para demonstração visual da solução**.

Esses números foram gerados a partir da carga de dados de exemplo (`sql/02_load_exemplo.sql`) e podem ser verificados executando as queries em `sql/03_queries_dashboard.sql`.

Para dados reais da CantuStore, execute:
1. `sql/01_create_dimensoes.sql` (criar tabelas)
2. Carregue os dados reais da operação
3. Execute `sql/03_queries_dashboard.sql` (todas as 8 queries)

Os resultados retornarão os valores reais da base de dados.

### Visão executiva (exemplo com dados ilustrativos)

```
┌──────────────────────────────────────────────────────────────┐
│                CARRINHO ABANDONADO - RESUMO               │
├──────────────────────────────────────────────────────────────┤
│  KPI 1: Carrinhos abandonados      KPI 2: Itens abandonados │
│  [resultado da query 8]            [resultado da query 8]  │
│                                                            │
│  KPI 3: Valor não faturado         KPI 4: Produtos críticos│
│  [resultado da query 8]            [resultado da query 1]  │
└──────────────────────────────────────────────────────────────┘
```

### Estrutura do dashboard entregue

O dashboard foi estruturado para responder às 7 perguntas de negócio através de 8 queries:

1. Query 1: Top produtos por abandono
2. Query 2: Duplas de produtos mais abandonadas
3. Query 3: Produtos com aumento de abandono
4. Query 4: Produtos novos no primeiro mês
5. Query 5: Estados com mais abandonos
6. Query 6: Relatório produto x mês
7. Query 7: Relatório por data
8. Query 8: Resumo executivo

---

## Estrutura do repositório

```
prova-CantuStore/
├── README.md
├── docs/
│   ├── arquitetura_modelagem.md
│   ├── relatorio_negocio.md
│   ├── versao_execucao_bi.md
│   ├── versao_apresentacao_entrevista.md
│   └── versao_final_entrega.md
├── sql/
│   ├── 01_create_dimensoes.sql
│   ├── 02_load_exemplo.sql
│   └── 03_queries_dashboard.sql
├── dashboard/
│   ├── README.md
│   ├── dashboard-preview.html
│   └── powerbi-dashboard-concept.html
├── slides/
│   └── cantustore-deck.html
├── data/
│   └── README.md
├── .gitignore
└── LICENSE
```

---

## Como executar a solução

### 1. Modelagem no SQL
Crie as tabelas com:
```sql
-- Executar: sql/01_create_dimensoes.sql
```

### 2. Carregue dados iniciais (ou seus dados reais)
```sql
-- Executar: sql/02_load_exemplo.sql
-- Ou, para dados reais, faça um INSERT a partir da sua base operacional
```

### 3. Execute as consultas analíticas
```sql
-- Executar: sql/03_queries_dashboard.sql
-- Isso retornará os 8 resultados que alimentam o dashboard
```

### 4. Visualize o dashboard entregue
- `dashboard/dashboard-preview.html` (abrir no navegador)
- `slides/cantustore-deck.html` (apresentação)

Esses arquivos mostram a estrutura visual final e servem como base para implementação em Power BI ou Looker Studio.

---

## Decisões técnicas importantes

### Por que Fato e Dimensão?
Porque esse é o padrão mais adequado para BI e dashboards executivos.

Ele permite:

- consultas mais rápidas;
- visualização mais clara para negócio;
- agregações por produto, data, região e categoria;
- escalabilidade para dados maiores;
- manutenção mais simples e sustentável.

### Por que focar em valor não faturado?
Porque abandonar um carrinho não é só um problema de volume; é também um problema de receita perdida. Esse indicador é estratégico porque mostra o impacto financeiro real da desistência.

### Por que separar produtos novos?
Porque produtos recém-lançados costumam ter comportamento diferente de itens já consolidados. A análise do primeiro mês é essencial para avaliar aceitação, percepção de valor e conversão inicial.

---

## Principais insights esperados

Com a modelagem e o dashboard entregues, a empresa consegue responder:

- quais produtos mais exigem atenção;
- quais itens devem receber campanha ou incentivo;
- quais regiões precisam de atenção em logística e frete;
- quais produtos aparecem juntos com mais frequência em carrinhos abandonados;
- quanto a operação está deixando de faturar;
- se o problema está se agravando ao longo do tempo.

---

## Conclusão

Este projeto foi desenvolvido para ser uma solução prática, estruturada e analítica, com foco em tomada de decisão. Ele demonstra que foi possível:

- entender o problema de negócio;
- modelar corretamente os dados;
- transformar o dado em indicadores relevantes;
- estruturar um dashboard executivo capaz de responder às perguntas da área responsável;
- entregar uma solução coerente para uma prova de Analista de Dados e BI.

A proposta é funcional, clara e alinhada ao contexto da CantuStore.

---

**Desenvolvido como projeto pessoal para a prova de Analista de Dados e BI da CantuStore**
**Repositório:** https://github.com/luisfernandoti2021-cell/prova-CantuStore
