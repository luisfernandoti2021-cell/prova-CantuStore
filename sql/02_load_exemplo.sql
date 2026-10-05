-- Script de carga inicial de dimensões e fato.
-- Ajuste os valores conforme a estrutura real do seu banco de dados.

INSERT INTO dim_produto (produto_id, nome_produto, categoria, subcategoria, marca, data_lancamento, preco_unitario)
VALUES
(1, 'Pneu Aro 15', 'Pneus', 'Passeio', 'Cantu', '2024-01-15', 520.00),
(2, 'Pneu Aro 17', 'Pneus', 'SUV', 'Cantu', '2024-02-10', 680.00),
(3, 'Kit de Alinhamento', 'Serviços', 'Manutenção', 'Cantu', '2024-03-01', 420.00),
(4, 'Válvula de Pneu', 'Acessórios', 'Acessórios', 'Cantu', '2024-04-20', 25.00);

INSERT INTO dim_cliente (cliente_id, nome_cliente, cidade, estado, segmento)
VALUES
(1, 'Cliente A', 'São Paulo', 'SP', 'PF'),
(2, 'Cliente B', 'Rio de Janeiro', 'RJ', 'PF'),
(3, 'Cliente C', 'Belo Horizonte', 'MG', 'PJ'),
(4, 'Cliente D', 'Curitiba', 'PR', 'PF');

INSERT INTO dim_regiao (regiao_id, estado, cidade, uf)
VALUES
(1, 'São Paulo', 'São Paulo', 'SP'),
(2, 'Rio de Janeiro', 'Rio de Janeiro', 'RJ'),
(3, 'Minas Gerais', 'Belo Horizonte', 'MG'),
(4, 'Paraná', 'Curitiba', 'PR');

INSERT INTO dim_data (data_id, data_completa, ano, mes, mes_ano, dia, semana)
VALUES
(20240115, '2024-01-15', 2024, 1, '2024-01', 15, 3),
(20240120, '2024-01-20', 2024, 1, '2024-01', 20, 4),
(20240210, '2024-02-10', 2024, 2, '2024-02', 10, 6),
(20240301, '2024-03-01', 2024, 3, '2024-03', 1, 9);

INSERT INTO dim_pagamento (pagamento_id, metodo_pagamento, bandeira, parcelas, status)
VALUES
(1, 'Cartão de Crédito', 'Visa', 3, 'Aprovado'),
(2, 'Boleto', 'Boleto', 1, 'Pendente'),
(3, 'Pix', 'Pix', 1, 'Aprovado'),
(4, 'Cartão de Crédito', 'Mastercard', 6, 'Recusado');

INSERT INTO dim_carrinho (carrinho_id, quantidade_itens, valor_total, status)
VALUES
('CART-001', 2, 1040.00, 'Abandonado'),
('CART-002', 1, 680.00, 'Abandonado'),
('CART-003', 3, 970.00, 'Abandonado'),
('CART-004', 2, 545.00, 'Abandonado');

INSERT INTO fato_carrinho_abandonado (
    carrinho_id,
    cliente_id,
    produto_id,
    regiao_id,
    data_abandono_id,
    pagamento_id,
    quantidade_itens,
    valor_total_produtos,
    valor_nao_faturado,
    flag_abandonado,
    categoria_produto,
    mes_lancamento_produto
)
VALUES
('CART-001', 1, 1, 1, 20240115, 1, 1, 520.00, 520.00, 1, 'Pneus', 1),
('CART-001', 1, 3, 1, 20240115, 1, 1, 420.00, 420.00, 1, 'Serviços', 3),
('CART-002', 2, 2, 2, 20240120, 2, 1, 680.00, 680.00, 1, 'Pneus', 2),
('CART-003', 3, 1, 3, 20240210, 3, 1, 520.00, 520.00, 1, 'Pneus', 1),
('CART-003', 3, 4, 3, 20240210, 3, 1, 25.00, 25.00, 1, 'Acessórios', 4),
('CART-004', 4, 2, 4, 20240301, 4, 1, 680.00, 680.00, 1, 'Pneus', 2);

