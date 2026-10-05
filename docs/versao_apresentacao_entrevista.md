# Versão de apresentação para entrevista ou recrutador

## Introdução

Meu projeto na CantuStore foi focado em uma análise de carrinho abandonado, um dos problemas mais relevantes do e-commerce moderno. O objetivo foi transformar dados operacionais em indicadores de negócio para apoiar decisões estratégicas na área responsável.

A principal missão foi responder perguntas que ajudam a empresa a identificar onde a conversão está sendo perdida, quais produtos estão mais impactados e qual é o impacto financeiro dessa desistência.

---

## Quem sou eu no contexto do projeto

Eu conduzi a análise desde a modelagem dos dados até a definição dos indicadores e do dashboard. A primeira etapa foi entender o problema de negócio e transformar a base bruta em um modelo dimensional, com foco em análise exploratória e visualização.

Esse tipo de trabalho exige iniciativa, capacidade de entender requisitos de negócio e transformar isso em uma estrutura de dados útil para tomada de decisão. Ao invés de apenas gerar consultas isoladas, a abordagem foi construir uma base que permitisse responder perguntas reais do negócio com rapidez e consistência.

---

## Decisão de modelagem

Para o problema de carrinho abandonado, optei por uma modelagem em estrela. Essa escolha é adequada porque o dado tem natureza analítica e o objetivo é facilitar a agregação por produto, data, região e comportamento do cliente.

Em vez de montar uma estrutura complexa e pouco legível, a solução centraliza a métrica principal em uma tabela fato e utiliza dimensões para contextualizar a análise. Isso torna o dashboard mais rápido de interpretar e melhora a clareza do raciocínio analítico.

---

## Principais perguntas de negócio respondidas

- Quais produtos tiveram mais carrinhos abandonados?
- Quais pares de produtos aparecem juntos em maior volume de abandono?
- Quais produtos demonstraram aumento de abandono ao longo do tempo?
- Quais itens novos tiveram comportamento de conversão fraco no primeiro mês?
- Quais estados apresentam maior volume de desistência?
- Qual o valor não faturado por produto, mês e data?

---

## Como a solução foi estruturada

A solução inclui:

- modelagem dimensional em SQL;
- criação de tabelas de fato e dimensão;
- scripts de carga de exemplo;
- consultas analíticas para dashboard;
- documentação de arquitetura;
- material de apoio para apresentação e discussão.

Além disso, elaborei a proposta de painel com KPIs e relatórios mensais e diários, o que demonstra visão prática de negócio e capacidade de transformar dados em estratégia.

---

## Por que isso é relevante para a empresa

O projeto mostra que a análise vai além do dado técnico. Ele conecta a operação ao resultado financeiro e ao comportamento do consumidor. Em uma empresa com escala e operação de e-commerce, entender o abandono de carrinho significa entender onde a conversão falha e onde a empresa pode agir.

A relevância está em oferecer bases para:

- melhorar conversão;
- ajustar preços e ofertas;
- priorizar produtos e regiões;
- melhorar logística e frete;
- reduzir perda de faturamento.

---

## Conclusão

Este projeto representa uma solução analítica completa para a área de carrinho abandonado, com foco em visão de negócio, modelagem correta e dashboard estratégico. Ele demonstra uma linha de raciocínio adequada ao papel de analista de dados e BI, refletindo entendimento da operação, das métricas e dos indicadores que realmente importam.

