select * from cliente
select * from pedido
select * from endereco
select * from produto
select * from time
select * from categoria
select * from produtos_pedidos

-- Tabela Clientes
create table cliente(
	cod_cliente int primary key,
	nome char(20),
	sobrenome char(20),
	email varchar(100),
	telefone numeric(12),
	data_nascimento date
);
INSERT INTO cliente (cod_cliente, nome, sobrenome, email, telefone, data_nascimento)
    VALUES 
		('1', 'IVONELIA', 'ARGULINO', 'ivonelia.argulino265830@gmail.com', '6926226583','1973-01-24'),
		('2', 'ESTEVANIA', 'MARTHUS', 'estevania.marthus204682@gmail.com', '4063220468','1969-06-30'),
		('3', 'CLEUDINE', 'DUARTE', 'cleudine.duarte661670@gmail.com', '8163966167','1945-12-25'),
		('4', 'ADEIZE', 'LUZILDO', 'adeize.luzildo797118@gmail.com', '2194379711','1948-03-25'),
		('5', 'SHEYLLA', 'JESKA', 'sheylla.jeska608366@gmail.com', '6514860836','1963-10-31'),
		('6', 'NACLECIA', 'GENAI', 'naclecia.genai578212@gmail.com', '2570657821','1959-10-22');

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
		('001', 'Centro Norte', 'PR', 'Rua do Comércio', 'Dois Vizinhos', '1'),
		('002', 'Centro Sul', 'TO', 'Rua 189', 'Palmas','2'),
		('003', 'Centro', 'SP', 'Rua Ipiranga', 'São José dos Campos', '3'),
		('004', 'Oriente', 'MG', 'Rua Santa Luiza 65', 'Belo Horizonte','4'),
		('005', 'Pampulha', 'RJ', 'Estrada Boa Esperança', 'Rio de Janeiro', '5'),
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
create table time(
	id_time int primary key,
	nomeTime char (30)
);

insert into time(id_time, nometime)
	values
	('10', 'Corinthians'),
	('20','São Paulo'),
	('30','Palmeiras'),
	('40','Santos'),
	('50','Vasco'),
	('60','Flamengo');

-- Tabela Categoria	
create table categoria(
	cod_categoria int primary key,
	nome char(20)
);
insert into categoria(cod_categoria, nome)
	values
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



