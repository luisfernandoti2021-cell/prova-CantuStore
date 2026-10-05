# Versão executiva do projeto CantuStore

## 1. Contexto e objetivo

A CantuStore atua no segmento de tecnologia e logística para pneus, conectando vendedores e compradores em uma experiência completa. Nesse cenário, o abandono de carrinho representa um ponto crítico de eficiência operacional e comercial, porque indica que o cliente foi até o processo de decisão, mas não concluiu a compra.

O objetivo principal desta solução foi criar uma base analítica para responder, com clareza e rapidez, as principais perguntas do negócio relacionadas a carrinhos abandonados. Isso permite apoiar decisões em áreas como comercial, logística, precificação, campanhas e experiência de compra.

---

## 2. Problema de negócio

O seu principal desafio é transformar dados de comportamento de compra em decisões operacionais. As perguntas centrais são:

- Quais produtos são mais abandonados?
- Quais pares de produtos costumam aparecer juntos em carrinhos abandonados?
- O abandono aumentou ou caiu por produto e período?
- Quais produtos novos apresentam risco de baixa conversão no primeiro mês?
- Em quais estados o abandono é maior?
- Quanto valor a empresa deixou de faturar por produto, mês e dia?

---

## 3. Modelo de dados proposto

A solução foi estruturada em modelo estrela para facilitar o uso em dashboard e consultas analíticas.

### Tabela fato

- `fato_carrinho_abandonado`

### Dimensões

- `dim_produto`
- `dim_cliente`
- `dim_regiao`
- `dim_data`
- `dim_pagamento`
- `dim_carrinho`

Essa estrutura permite uma análise mais simples e escalável, já que os indicadores ficam centralizados em uma tabela fato enquanto o contexto fica nas dimensões.

---

## 4. Métricas analisadas

- quantidade de carrinhos abandonados;
- quantidade de itens abandonados;
- valor não faturado;
- crescimento de abandono por produto;
- top produtos por abandono;
- regiões com maior volume de desistência;
- relatório histórico por data e por mês;
- avaliação de produtos novos no primeiro mês de lançamento.

---

## 5. Indicadores estratégicos

### KPI 1 — Carrinhos abandonados
Representa a quantidade de carrinhos que não foram convertidos em compra.

### KPI 2 — Itens abandonados
Aponta a quantidade de itens que ficaram no carrinho e não foram vendidos.

### KPI 3 — Valor não faturado
Mede o impacto financeiro do problema. Esse indicador é importante para priorizar ações de recuperação e ajuste de conversão.

### KPI 4 — Top produtos por abandono
Mostra quais itens demandam atenção imediata.

### KPI 5 — Estados com maior abandono
Permite entender se existe correlação com frete, logística, faixa de preço ou região.

---

## 6. Dashboard recomendado

### Visão geral executiva
- KPIs principais
- Top 10 produtos mais abandonados
- Top 10 estados por volume de abandono
- Tendência mensal de carrinhos abandonados

### Análise de produto
- ranking por produto
- comparação de abandono por mês
- produtos com crescimento de desistência
- produtos recém-lançados e queda de conversão

### Análise geográfica
- mapa por UF
- ranking por estado
- comparação por região e cidade

### Análise temporal
- carrinhos abandonados por dia
- itens abandonados por dia
- valor não faturado por dia

---

## 7. Valor do projeto

Este projeto entrega uma visão estratégica e prática da operação. Além de responder o que está acontecendo, ele também oferece base para inferir por que está acontecendo e quais ações podem ser tomadas para reduzir o problema.

Os ganhos esperados incluem:

- melhor visibilidade do problema;
- priorização de produtos e regiões;
- redução de perda financeira;
- melhor entendimento do comportamento do consumidor;
- decisões mais confiáveis para marketing, logística e comercial.

---

## 8. Entregáveis presentes no repositório

- modelagem dimensional em SQL;
- scripts de carregamento;
- consultas analíticas de BI;
- documentação de arquitetura;
- documentação de negócio;
- estrutura de dashboard para Power BI / Looker Studio.

---

## 9. Observação final

O projeto foi desenvolvido visando uma entrega profissional, com foco em clareza, contexto de negócio e uso prático em dashboard. É uma solução sólida para apresentação em prova, portfólio e discussões técnicas.

