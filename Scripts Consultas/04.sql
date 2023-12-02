--1: Estamos unindo a tabela cliente com a tabela endereco usando a coluna cod_cliente para relacionar os registros.
--Selecionamos o nome do cliente, a rua e a cidade do endereço correspondente.

SELECT cliente.nome, endereco.rua, endereco.cidade
FROM cliente
INNER JOIN endereco ON cliente.cod_cliente = endereco.cod_cliente;

--2 Essa consulta irá retornar todos os dados das tabelas cliente e endereco, onde os códigos dos clientes são iguais.
select
    c.nome,
    c.sobrenome,
    c.bairro,
    c.estado
FROM
    cliente c
INNER JOIN
    endereco e
ON
    c.cod_cliente = e.cod_cliente;