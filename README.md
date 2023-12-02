# Universidade Tecnológica Federal do Paraná
**Matéria:** Banco de dados I  
**Dra:** Franciele Beal

## Outlet Coleção - 2024
**Trabalho produzido por:**  
- Luiz Felipe 
- Victor Souza Galvão 
**Local:** Dois Vizinhos - Paraná  
**Ano:** 2023

---

## 1. INTRODUÇÃO
A proposta do Outlet da coleção 2024 é a produção de estoque baseada no ano anterior, com o objetivo de oferecer um inventário com preços acessíveis para o próximo ano, apresentando coleções desde dedicadas a times a roupas casuais. Isso proporciona uma renovação para as vestimentas e maximiza seu aproveitamento. Essa estratégia contribui para evitar escassez devido à alta demanda e aos preços elevados durante esses períodos.

## 2. CONTEXTUALIZAÇÃO
Num cenário de indústria da moda altamente dinâmico, a abordagem do Outlet da coleção 2024 representa uma estratégia inovadora adotada por empresas para lidar com a volatilidade do mercado. Diante da constante mudança de preferências dos consumidores e da busca por produtos de qualidade a preços acessíveis, essa iniciativa visa antecipar essa demanda.
A produção de estoque baseada no ano anterior permite que as marcas ofereçam uma variedade de coleções dedicadas não apenas a peças casuais, mas também a coleções temáticas, como aquelas inspiradas em times esportivos. Essa diversificação não só satisfaz diferentes segmentos de consumidores, mas também busca garantir que a moda seja acessível e atualizada para todos.
Além disso, a proposta não se restringe apenas a uma oferta de produtos, mas também promove uma abordagem sustentável ao reutilizar e dar continuidade ao estoque existente. Isso contribui para minimizar o desperdício e maximizar o uso de recursos, alinhando-se com as crescentes preocupações ambientais dos consumidores.
Essa estratégia não apenas atende à demanda por produtos de qualidade a preços mais acessíveis, mas também se posiciona como uma resposta inteligente às flutuações de mercado, garantindo que a oferta esteja alinhada com a procura, evitando assim escassez e preços elevados durante os períodos de alta demanda.

Esta contextualização aborda a estratégia do Outlet da coleção 2024 dentro do cenário da indústria da moda, destacando seus objetivos, abordagens e benefícios para consumidores e para o mercado em geral.

## 3.0 - REQUISITOS DA MODELAGEM DO BANCO DE DADOS
Um banco de dados é uma ferramenta essencial para gerenciar informações de maneira estruturada e eficiente. No caso da nossa Outlet Coleção 2024, é importante ter um banco de dados que possa armazenar e organizar os dados imprescindíveis para o funcionamento e a manutenção da loja online, o que foi levantado ao longo deste capítulo.

### 3.1.1 - ENTIDADE CLIENTE
A entidade denominada "cliente" é encarregada de representar os dados dos indivíduos que são clientes de nossa loja e que estão utilizando nossa plataforma para realizar as compras. Eles são responsáveis pelos dados a cadastrar para o recebimento dos produtos, foram atribuídas as seguintes características ao modelar o banco de dados.
- `cod_cliente`: identificador único do cliente.
- `nome`: nome do cliente.
- `e-mail`: e-mail do cliente.
- `sobrenome`: sobrenome do cliente.
- `telefone`: telefone do cliente.
- `data_nascimento`: data de nascimento do cliente.

### 3.1.2 - ENTIDADE ENDEREÇO
A entidade "endereço" representa o local onde os clientes residem, e nela estão associadas as informações necessárias para o recebimento dos produtos que serão adquiridos por eles.
- `sequencial`: identificador único.
- `cod_cliente`: como chave estrangeira.
- `cidade`: cidade onde mora o cliente.
- `estado`: referente ao local onde o cliente reside.
- `rua`: referente ao local onde o cliente reside.
- `bairro`: referente ao local onde o cliente reside.

### 3.1.3 - ENTIDADE PEDIDO
A entidade de pedido representa a questão de contabilidade para loja. Para isso, foram atribuídas as seguintes características à entidade:
- `cod_pedido`: chave primária para identificação.
- `cod_cliente`: chave estrangeira feita para referenciar o cliente.
- `valor_pedido`: valor total do pedido.
- `data`: referente à data em que foi feito o pedido.

### 3.1.4 - ENTIDADE PRODUTOS_PEDIDOS
A entidade de produtos pedidos representa a questão de valor, como se fosse o carrinho final de compras.
- `quantidade`: representa a quantidade final.
- `valor_total`: representa o valor total da compra.
- `cod_pedido`: como localizador para a coluna.
- `id_produto`: como chave estrangeira.

### 3.1.5 - ENTIDADE PRODUTOS
A entidade de produtos representa o estoque em si da loja e o valor unitário do mesmo.
- `cor`: representa uma seleção.
- `coleção`: representa uma seleção.
- `id_produto`: como chave primária.
- `preço_unitário`: representa o preço de cada produto.
- `tamanho`: representa o tamanho de cada produto.
- `cod_categoria`: chave estrangeira.
- `id_time`: chave estrangeira.

### 3.1.6 - Categoria
A entidade categoria representa o refinamento da loja e o produto por coleção.
- `cod_categoria`: como chave primária.
- `nome_categoria`: representa uma categoria.

### 3.1.7 - Time
A entidade time representa o refinamento da loja no quesito esportes.
- `id_time`: como chave primária.
- `nome_time`: representa um time.

## 4 - MODELAGEM ENTIDADE RELACIONAMENTO
O modelo entidade-relacionamento de um banco de dados é um modelo que descreve os objetos (entidades) e suas características (atributos) envolvidos em um negócio e como eles se relacionam entre si (relacionamentos). No modelo ER, as entidades são representadas por retângulos e os relacionamentos são representados por linhas que os conectam.
Para o desenvolvimento deste projeto, foi de suma importância o software BRModelo, com ele foi possível a criação do modelo Entidade-Relacionamento, das entidades, atributos e relacionamentos citados nos capítulos acima. A ferramenta brModelo foi desenvolvida pelo Grupo de Banco de Dados da UFSC em 2005 com o intuito de ser uma ferramenta gratuita para apoiar o ensino de projetos de bancos de dados relacionais.

Com o uso do BRModelo foi possível desenvolver diagramas ER de forma visual e intuitiva, o que auxiliou na representação de entidades (como "Astronauta", "Módulos", "Veículos", entre outras), seus atributos (como "Nome", "Idade", "Descrição", etc.) e os relacionamentos entre elas (como "Módulos precisa de Suprimentos", "Veículo transporta Módulos", entre outros) de forma que proporcionou uma visão clara e organizada das entidades e suas interações.

## 5 - MODELAGEM LÓGICA
Um modelo de banco de dados lógico estabelece a estrutura dos elementos de dados e os relacionamentos entre eles em formas de mini tabelas com informações dos dados a serem registrados. O modelo de dados lógico leva os elementos de modelagem de dados conceituais um passo adiante, adicionando mais informações a eles, como se é Chave Primária (PK), Chave Estrangeira (FK), tipo de dado (Integer, VARCHAR), entre outras individualidades.
Na hora da modelagem em forma lógica, chegamos mais perto do que teremos na modelagem física (SQL), por isso, alguns relacionamentos podem virar tabelas, outros podem fazer que tabelas se juntem, alguns atributos como os multivalorados podem virar tabelas, de acordo com as regras preestabelecidas para a transformação entre modelos.
Para a realização do modelo lógico, foi usado como no modelo ER, o software BRModelo, utilizando da sua ferramenta de conversão automática para o modelo lógico, o que auxiliou na produtividade na entrega final do projeto.

## 6 - MODELO FÍSICO (SQL - STRUCTURED QUERY LANGUAGE)
O modelo físico, por sua vez, faz a modelagem física do modelo de banco de dados. Neste caso leva-se em conta as limitações impostas pelo SGBD (Sistema de gerenciamento de banco de dados) escolhido e deve ser criado sempre com base nos exemplos de modelagem de dados produzidos no item anterior, no modelo lógico. É importante relembrar que os SGDBs fazem o uso de SQL (Structured Query Language), uma linguagem de programação para armazenar e processar informações em um banco de dados relacional.
Um banco de dados relacional armazena informações em formato tabular, com linhas e colunas representando diferentes atributos de dados e as várias relações entre os valores dos dados. Para satisfazer as necessidades e demonstrar o dia a dia na plataforma espacial, foram feitos alguns comandos usando um SGDB de PostgreSQL.

- Comandos para a criação e inserção de dados das tabelas;
-- Tabela Clientes
```sql
create table cliente(
 cod_cliente int primary key,
 nome char(20),
 sobrenome char(20),
 email varchar(100),
 telefone numeric(12),
 data_nascimento date
);

INSERT INTO cliente (cod_cliente, nome, sobrenome, email, telefone, 
data_nascimento)
 VALUES
 ('1', 'IVONELIA', 'ARGULINO', 'ivonelia.argulino265830@gmail.com', 
'6926226583','1973-01-24'),
 ('2', 'ESTEVANIA', 'MARTHUS', 'estevania.marthus204682@gmail.com', 
'4063220468','1969-06-30'),
 ('3', 'CLEUDINE', 'DUARTE', 'cleudine.duarte661670@gmail.com', 
'8163966167','1945-12-25'),
 ('4', 'ADEIZE', 'LUZILDO', 'adeize.luzildo797118@gmail.com', 
'2194379711','1948-03-25'),
 ('5', 'SHEYLLA', 'JESKA', 'sheylla.jeska608366@gmail.com', 
'6514860836','1963-10-31'),
 ('6', 'NACLECIA', 'GENAI', 'naclecia.genai578212@gmail.com', 
'2570657821','1959-10-22');
-- Tabela Pedidos
create table pedido(
 cod_pedido int primary key,
 valor_pedido int not null,
 data date not null,
 cod_cliente int references cliente
);
insert into pedido(cod_pedido, valor_pedido, data, cod_cliente)
values
 ('12','55','1/12/2023', '1'),
 ('13','15', '2/10/2023', '2'),
 ('14', '90', '4/4/2023', '3'),
 ('15', '35', '6/6/2023', '4');
-- Tabela Endereço 
create table endereco(
 sequencial int primary key,
 bairro varchar(100),
 estado char(30),
 rua varchar(40),
 cidade char(40),
 cod_cliente int references cliente
);
insert into endereco(sequencial, bairro, estado, rua, cidade, cod_cliente)
 values
 ('001', 'Centro Norte', 'PR', 'Rua do Comércio', 'Dois Vizinhos', 
'1'),
 ('002', 'Centro Sul', 'TO', 'Rua 189', 'Palmas','2'),
 ('003', 'Centro', 'SP', 'Rua Ipiranga', 'São José dos Campos', '3'),
 ('004', 'Oriente', 'MG', 'Rua Santa Luiza 65', 'Belo Horizonte','4'),
 ('005', 'Pampulha', 'RJ', 'Estrada Boa Esperança', 'Rio de Janeiro', 
'5'),
 ('006', 'Savassi', 'ES', 'Rua P5', 'Vitoria','6');
-- Tabela Produtos
create table produto(
 id_produto int primary key,
 colecao varchar (50),
 cor varchar (20),
 tamanho varchar (10),
 preco_unitario decimal
);
insert into produto(id_produto, colecao, cor, tamanho, preco_unitario)
 values
 ('123','esporte','azul','G','55.00'),
 ('456','esporte','colorida','GG','62.50'),
 ('789','verao','branco','P','15.00'),
 ('101','casual','cinza','48','105.99'),
 ('392','inverno','preto','M','90.00'),
 ('666','verao','laranja','06','35.50');
-- Tabela Time 
CREATE TABLE time(
 id_time int primary key,
 nomeTime char (30)
);
INSERT INTO time(id_time, nometime)
 VALUES
 ('10', 'Corinthians'),
 ('20','São Paulo'),
 ('30','Palmeiras'),
 ('40','Santos'),
 ('50','Vasco'),
 ('60','Flamengo');
 
-- Tabela Categoria 
CREATE TABLE categoria(
 cod_categoria int primary key,
 nome char(20)
);
INSERT INTO categoria(cod_categoria, nome)
 VALUES
 ('11','Esporte'),
 ('22','Verão'),
 ('33','Inverno'),
 ('44','Casual');
 
-- Tabela produtos_pedidos
CREATE TABLE produtos_pedidos(
 cod_pedido int,
 id_produto int,
 quantidade int,
 valor_total int,
 FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
 PRIMARY KEY (cod_pedido, id_produto)
);
INSERT INTO produtos_pedidos(cod_pedido, id_produto, quantidade, valor_total)
VALUES
 ('1', '123', '2', '110'),
 ('2', '456', '1', '62'),
 ('3', '789', '3', '45'),
 ('4', '101', '4', '423');
 
-- Comando de alteração para um registro de uma tabela;
UPDATE cliente
SET nome = 'Luiza'
WHERE cod_cliente = 1;
 
-- Comando de deleção para um registro de uma tabela;
DELETE FROM pedido
WHERE cod_pedido = 12;
 
-- Consulta simples para as tabelas;
SELECT * FROM cliente;
SELECT * FROM pedido;
SELECT * FROM endereco;
SELECT * FROM produto;
SELECT * FROM time;
SELECT * FROM categoria;
SELECT * FROM produtos_pedidos;
 
-- Consultas com junção de tabelas (JOIN);
SELECT cliente.nome, endereco.rua, endereco.cidade
FROM cliente
INNER JOIN endereco ON cliente.cod_cliente = endereco.cod_cliente;
 
-- Consultas com funções de agregação;
SELECT COUNT(*) AS total_pedido
FROM pedido;
 
-- Consultas com agrupamentos ou subconsultas;
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
c.sobrenome
