-- 1. Produtos com maior número de carrinhos abandonados
SELECT
    p.nome_produto,
    COUNT(DISTINCT f.carrinho_id) AS qtd_carrinhos_abandonados,
    SUM(f.valor_nao_faturado) AS valor_nao_faturado
FROM fato_carrinho_abandonado f
JOIN dim_produto p ON p.produto_id = f.produto_id
GROUP BY p.nome_produto
ORDER BY qtd_carrinhos_abandonados DESC, valor_nao_faturado DESC;

-- 2. Duplas de produtos que mais apareceram juntas em carrinhos abandonados
SELECT
    p1.nome_produto AS produto_1,
    p2.nome_produto AS produto_2,
    COUNT(*) AS qtd_carrinhos_juntos
FROM fato_carrinho_abandonado f1
JOIN fato_carrinho_abandonado f2
    ON f1.carrinho_id = f2.carrinho_id
   AND f1.produto_id < f2.produto_id
JOIN dim_produto p1 ON p1.produto_id = f1.produto_id
JOIN dim_produto p2 ON p2.produto_id = f2.produto_id
GROUP BY p1.nome_produto, p2.nome_produto
ORDER BY qtd_carrinhos_juntos DESC;

-- 3. Produtos com aumento de abandono entre meses
WITH abandono_mes AS (
    SELECT
        p.nome_produto,
        d.mes_ano,
        COUNT(DISTINCT f.carrinho_id) AS qtd_carrinhos
    FROM fato_carrinho_abandonado f
    JOIN dim_produto p ON p.produto_id = f.produto_id
    JOIN dim_data d ON d.data_id = f.data_abandono_id
    GROUP BY p.nome_produto, d.mes_ano
)
SELECT
    nome_produto,
    mes_ano,
    qtd_carrinhos,
    LAG(qtd_carrinhos) OVER (PARTITION BY nome_produto ORDER BY mes_ano) AS qtd_anterior,
    qtd_carrinhos - LAG(qtd_carrinhos) OVER (PARTITION BY nome_produto ORDER BY mes_ano) AS variacao
FROM abandono_mes
ORDER BY nome_produto, mes_ano;

-- 4. Produtos novos no primeiro mês de lançamento
SELECT
    p.nome_produto,
    p.data_lancamento,
    COUNT(DISTINCT f.carrinho_id) AS qtd_carrinhos_abandonados
FROM fato_carrinho_abandonado f
JOIN dim_produto p ON p.produto_id = f.produto_id
WHERE f.data_abandono_id BETWEEN 20240101 AND 20241231
  AND p.data_lancamento IS NOT NULL
GROUP BY p.nome_produto, p.data_lancamento
ORDER BY qtd_carrinhos_abandonados DESC;

-- 5. Estados com mais abandonos
SELECT
    r.uf AS estado,
    COUNT(DISTINCT f.carrinho_id) AS qtd_carrinhos_abandonados,
    SUM(f.quantidade_itens) AS qtd_itens_abandonados,
    SUM(f.valor_nao_faturado) AS valor_nao_faturado
FROM fato_carrinho_abandonado f
JOIN dim_regiao r ON r.regiao_id = f.regiao_id
GROUP BY r.uf
ORDER BY qtd_carrinhos_abandonados DESC;

-- 6. Relatório produto x mês
SELECT
    p.nome_produto,
    d.mes_ano,
    COUNT(DISTINCT f.carrinho_id) AS qtd_carrinhos_abandonados,
    SUM(f.quantidade_itens) AS qtd_itens_abandonados,
    SUM(f.valor_nao_faturado) AS valor_nao_faturado
FROM fato_carrinho_abandonado f
JOIN dim_produto p ON p.produto_id = f.produto_id
JOIN dim_data d ON d.data_id = f.data_abandono_id
GROUP BY p.nome_produto, d.mes_ano
ORDER BY d.mes_ano, qtd_carrinhos_abandonados DESC;

-- 7. Relatório por data
SELECT
    d.data_completa,
    COUNT(DISTINCT f.carrinho_id) AS qtd_carrinhos_abandonados,
    SUM(f.quantidade_itens) AS qtd_itens_abandonados,
    SUM(f.valor_nao_faturado) AS valor_nao_faturado
FROM fato_carrinho_abandonado f
JOIN dim_data d ON d.data_id = f.data_abandono_id
GROUP BY d.data_completa
ORDER BY d.data_completa ASC;

