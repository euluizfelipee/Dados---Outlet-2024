--1: Quantidade de pedidos
SELECT COUNT(*) AS total_pedido
FROM pedido;

--2: Total de vendas 
SELECT categoria.nome, COUNT(produto.id) AS total_produto
FROM categoria
LEFT JOIN categoria_produto ON categoria.id = categoria_produto.categoria_id
LEFT JOIN produto ON categoria_produto.produto_id = produtos.id
GROUP BY Categoria.nome;
