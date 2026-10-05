# Projeto CantuStore - Análise de Carrinho Abandonado

## Sobre este projeto

Este projeto foi desenvolvido como parte da minha prova de **Analista de Dados e BI** para a **CantuStore**. A ideia central era resolver um problema real do e-commerce: entender por que os clientes estão abrindo o carrinho, buscando produtos e desistindo antes da compra finalizada.

A partir daí, eu estruturei uma solução completa de análise, começando pela modelagem de dados e chegando na proposta de dashboard executivo para apoiar decisões de negócio.

---

## O problema de negócio

No e-commerce, o carrinho abandonado é um dos indicadores mais importantes porque mostra uma etapa em que o cliente já teve intenção de compra, mas não concluiu a ação. Isso gera impacto direto em:

- volume de vendas;
- receita potencial perdida;
- percepção da experiência de compra;
- performance de produtos e regiões;
- eficiência da operação logística e comercial.

Para a CantuStore, isso tem relevância ainda maior porque o negócio trabalha com uma operação que envolve produto, logística, tecnologia e decisão de compra em um cenário competitivo.

---

## Minha abordagem

### 1. Entender o problema com foco em negócio
Antes de montar consultas, eu me perguntei o que o time de negócio realmente precisava responder:

- Quais produtos geram mais carrinhos abandonados?
- Quais produtos aparecem juntos com mais frequência?
- Quais períodos tiveram aumento na desistência?
- Quais estados representam maior volume de abandono?
- Qual é o impacto financeiro em valor não faturado?
- Há produtos novos com baixa conversão no primeiro mês?

### 2. Definir a estrutura correta dos dados
A melhor forma de responder isso em BI é usar o modelo **Fato e Dimensão**.

Essa abordagem facilita:
- agregação por categoria, mês, estado e produto;
- comparações temporais;
- criação de KPIs claros;
- dashboard mais fácil para o usuário final.

### 3. Criar a base analítica para tomada de decisão
A solução foi pensada para responder não só o que aconteceu, mas também por que isso está acontecendo e onde o time deve agir.

---

## Modelagem adotada

### Tabela fato

- `fato_carrinho_abandonado`

Essa é a tabela central da análise, concentrando as métricas mais importantes do problema:

- carrinho_id
- produto_id
- cliente_id
- regiao_id
- data_abandono_id
- pagamento_id
- quantidade_itens
- valor_total_produtos
- valor_nao_faturado
- flag_abandonado

### Dimensões

- `dim_produto`
- `dim_cliente`
- `dim_regiao`
- `dim_data`
- `dim_pagamento`
- `dim_carrinho`

Essa estrutura foi escolhida para facilitar as perguntas do negócio e deixar o dashboard mais eficiente e sustentável.

---

## Indicadores principais

A análise foi organizada para responder às seguintes perguntas:

1. Quais produtos mais tiveram carrinhos abandonados?
2. Quais duplas de produtos aparecem juntas com mais frequência?
3. Quais produtos tiveram aumento de abandono em relação ao mês anterior?
4. Quais os produtos novos e a quantidade de carrinhos no primeiro mês de lançamento?
5. Quais estados tiveram mais abandonos?
6. Qual foi o valor não faturado total e por produto?
7. Como o comportamento evoluiu mês a mês e por data?

---

## Dashboard proposto

A estrutura do dashboard foi pensada para atender o negócio em diferentes níveis de análise.

### Visão executiva

```
┌───────────────────────────────────────────────────────────────┐
│                CARRINHO ABANDONADO - RESUMO                 │
├───────────────────────────────────────────────────────────────┤
│  KPI 1: Carrinhos abandonados      KPI 2: Itens abandonados  │
│  2.847                             5.234                     │
│                                                             │
│  KPI 3: Valor não faturado         KPI 4: Produtos críticos │
│  R$ 892.456                        Top 10 produtos          │
└───────────────────────────────────────────────────────────────┘
```

### Top produtos por abandono

```
Pneu Aro 17 (SUV)        ████████████████████ 287
Pneu Aro 15 (Passeio)    ████████████████ 215
Kit Alinhamento          ███████████ 156
Pneu Aro 18 (Premium)    ████████████ 174
Válvula de Pneu          ████████ 98
```

### Abandono por estado

```
São Paulo (SP)          ████████████████████ 456
Rio de Janeiro (RJ)     ████████████ 287
Minas Gerais (MG)       ██████████ 245
Paraná (PR)             ████████ 198
Bahia (BA)              ██████ 156
```

### Tendência mensal do abandono

```
   R$900K ┤        ╱╲       ╱╲
          │       ╱  ╲     ╱  ╲
   R$800K ┤      ╱    ╲   ╱    ╲
          │     ╱      ╲ ╱      ╲
   R$700K ┤    ╱        ╲        ╲
          └────────────────────────────
             Jan   Fev   Mar   Abr   Mai
```

---

## Arquivos do projeto

```
prova-CantuStore/
├── README.md
├── docs/
│   ├── arquitetura_modelagem.md
│   ├── relatorio_negocio.md
│   ├── versao_execucao_bi.md
│   └── versao_apresentacao_entrevista.md
├── sql/
│   ├── 01_create_dimensoes.sql
│   ├── 02_load_exemplo.sql
│   └── 03_queries_dashboard.sql
├── dashboard/
│   ├── README.md
│   ├── looker-studio-setup.md
│   ├── powerbi-dashboard-concept.html
│   └── dashboard-preview.html
├── slides/
│   └── cantustore-deck.html
├── data/
│   └── README.md
└── .gitignore
```

---

## Como executar a solução

### 1. Modelagem no SQL
Crie as tabelas com:
- `sql/01_create_dimensoes.sql`

### 2. Carregue dados de exemplo
- `sql/02_load_exemplo.sql`

### 3. Execute as consultas analíticas
- `sql/03_queries_dashboard.sql`

### 4. Dashboard
- A estrutura de dashboard está em `dashboard/README.md`
- O guia para o Looker Studio está em `dashboard/looker-studio-setup.md`
- A versão visual de mockup está em `dashboard/dashboard-preview.html`
- A versão conceitual de Power BI está em `dashboard/powerbi-dashboard-concept.html`

---

## Decisões técnicas importantes

### Por que Fato e Dimensão?
Porque esse é o padrão mais adequado para soluções analíticas com foco em BI e relatórios executivos.

Ele permite:
- consultas mais simples e mais rápidas;
- visualizações intuitivas;
- facilidade de evoluir para novos indicadores;
- melhor entendimento do contexto em que a operação está acontecendo.

### Por que focar em valor não faturado?
Porque o abandono de carrinho não é apenas um problema de quantidade; ele também tem um impacto financeiro claro. O valor perdido, por produto, região e período, é uma métrica que fala diretamente ao negócio.

### Por que analisar produtos novos separadamente?
Porque produtos recém-lançados costumam ter comportamento diferente. Uma análise de abandono no primeiro mês pode indicar se a adoção inicial está saudável ou se há algum problema de posicionamento, preço ou percepção de valor.

---

## Principais insights esperados

Com essa estrutura, a empresa passa a ter respostas para:

- quais produtos mais exigem atenção;
- quais produtos precisam de campanha ou incentivo;
- quais regiões demandam ações de logística ou frete;
- que produtos estão sendo abandonados juntos;
- onde há maior perda financeira;
- se o problema está se agravando ao longo do tempo.

---

## Conclusão

Este projeto foi estruturado para ser uma solução realista de análise de e-commerce, com foco em business intelligence e tomada de decisão. Ele demonstra que eu consegui:

- entender o problema de negócio;
- modelar corretamente os dados;
- transformar o dado em indicadores de valor;
- pensar em dashboard e em visualização analítica.

O objetivo foi criar uma base analítica sólida, capaz de responder as perguntas estratégicas da área responsável e apoiar ações de melhoria na conversão.

---

**Desenvolvido como projeto pessoal para a prova de Analista de Dados e BI da CantuStore**
**Link do repositório:** https://github.com/luisfernandoti2021-cell/prova-CantuStore
