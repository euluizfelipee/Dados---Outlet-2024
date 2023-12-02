--Essa consulta irá retornar o nome, o sobrenome e o número total de pedidos de cada cliente.
SELECT
  c.nome,
  c.sobrenome,
  COUNT(*) AS total_pedidos
FROM
  cliente c
INNER JOIN
  pedido p
ON
  c.cod_cliente = p.cod_cliente
GROUP BY
  c.nome,
  c.sobrenome;
