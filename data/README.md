# Estrutura de dados esperada

## Dados de origem

Os dados podem vir de e-commerce, ERP ou CRM. A partir da modelagem sugerida, espera-se que os dados principais contenham as seguintes informações:

- carrinho;
- produto;
- cliente;
- endereço/região;
- data da intenção de compra;
- item abandonado;
- valor do item;
- método de pagamento;
- status da compra.

## Campos essenciais

- `carrinho_id`
- `cliente_id`
- `produto_id`
- `nome_produto`
- `categoria`
- `valor_item`
- `quantidade`
- `data_abandono`
- `estado`
- `cidade`
- `metodo_pagamento`

## Recomendação

Para manter qualidade no modelo final, é importante validar:

- ausência de duplicidade em carrinho e produto;
- datas consistentes;
- valores nulos em campos chaves;
- produtos sem categoria ou sem data de lançamento;
- estados faltantes em registros de endereço.

