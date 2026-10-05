CREATE TABLE dim_produto (
    produto_id INT PRIMARY KEY,
    nome_produto VARCHAR(200) NOT NULL,
    categoria VARCHAR(100),
    subcategoria VARCHAR(100),
    marca VARCHAR(100),
    data_lancamento DATE,
    preco_unitario DECIMAL(12,2)
);

CREATE TABLE dim_cliente (
    cliente_id INT PRIMARY KEY,
    nome_cliente VARCHAR(200),
    cidade VARCHAR(150),
    estado VARCHAR(100),
    segmento VARCHAR(50)
);

CREATE TABLE dim_regiao (
    regiao_id INT PRIMARY KEY,
    estado VARCHAR(100),
    cidade VARCHAR(150),
    uf CHAR(2)
);

CREATE TABLE dim_data (
    data_id INT PRIMARY KEY,
    data_completa DATE NOT NULL,
    ano INT NOT NULL,
    mes INT NOT NULL,
    mes_ano VARCHAR(20) NOT NULL,
    dia INT NOT NULL,
    semana INT NOT NULL
);

CREATE TABLE dim_pagamento (
    pagamento_id INT PRIMARY KEY,
    metodo_pagamento VARCHAR(50),
    bandeira VARCHAR(50),
    parcelas INT,
    status VARCHAR(30)
);

CREATE TABLE dim_carrinho (
    carrinho_id VARCHAR(50) PRIMARY KEY,
    quantidade_itens INT,
    valor_total DECIMAL(12,2),
    status VARCHAR(30)
);

CREATE TABLE fato_carrinho_abandonado (
    carrinho_id VARCHAR(50) NOT NULL,
    cliente_id INT,
    produto_id INT NOT NULL,
    regiao_id INT,
    data_abandono_id INT NOT NULL,
    pagamento_id INT,
    quantidade_itens INT,
    valor_total_produtos DECIMAL(12,2),
    valor_nao_faturado DECIMAL(12,2),
    flag_abandonado INT,
    categoria_produto VARCHAR(100),
    mes_lancamento_produto INT,
    PRIMARY KEY (carrinho_id, produto_id, data_abandono_id),
    FOREIGN KEY (cliente_id) REFERENCES dim_cliente(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES dim_produto(produto_id),
    FOREIGN KEY (regiao_id) REFERENCES dim_regiao(regiao_id),
    FOREIGN KEY (data_abandono_id) REFERENCES dim_data(data_id),
    FOREIGN KEY (pagamento_id) REFERENCES dim_pagamento(pagamento_id),
    FOREIGN KEY (carrinho_id) REFERENCES dim_carrinho(carrinho_id)
);

