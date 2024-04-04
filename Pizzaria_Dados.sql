/*Carlos Eduardo Mariano dos Santos*/
CREATE DATABASE IF NOT EXISTS Pizzaria;

USE Pizzaria;

CREATE table Clientes(
		ID_cliente int(8) AUTO_INCREMENT,
		CPF varchar(11) not null,
		Nome varchar(255),
		Endereco varchar(255),
		Telefone varchar(12),
		PRIMARY KEY (ID_cliente)
);

CREATE table Pizzas(
		ID_pizza int(2) AUTO_INCREMENT,
		Sabor varchar(255),
		ID_borda varchar(2),
		Borda varchar(255),
		Ingradientes varchar(255),
		PRIMARY KEY (ID_pizza)
);

CREATE table Pedidos(
		ID_pedido int(8) AUTO_INCREMENT,
		ID_cliente int(8),
		ID_pizza int(2),
		Preco decimal(4,2),
		FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
		FOREIGN KEY (ID_pizza) REFERENCES Pizzas(ID_pizza)
);

CREATE table Fornecedores(
		ID_fornecedor int(5) AUTO_INCREMENT,
		ID_materia int(6) AUTO_INCREMENT,
		CNPJ varchar(14),
		Telefone varchar(12),
		PRIMARY KEY (ID_fornecedor)
);

CREATE table Funcionarios(
		ID_func int(5) AUTO_INCREMENT,
		Nome varchar(255),
		salario decimal(7,2),
		Qualidade decimal(3,1),
		PRIMARY KEY (ID_func)
);	

INSERT INTO Clientes (ID_cliente, CPF, Nome, Endereco, Telefone)
VALUES ('00001', '23456789012', 'Maria', 'Av. Principal, 456', '11987654321'),
       ('00002', '34567890123', 'Carlos', 'Rua da Praia, 789', '11987654322'),
       ('00003', '45678901234', 'Ana', 'Alameda das Árvores, 101', '11987654323'),
       ('00004', '56789012345', 'Paulo', 'Travessa das Pedras, 210', '11987654324'),
       ('00005', '67890123456', 'Mariana', 'Praça Central, 15', '11987654325');

INSERT INTO Pizzas (ID_sabor, Sabor, ID_borda, Borda, Ingredientes)
VALUES ('01', 'Calabresa', '01', 'Catupiry', 'Calabresa, queijo, molho de tomate'),
       ('02', 'Marguerita', '02', 'Cheddar', 'Mussarela, tomate, manjericão'),
       ('03', 'Quatro Queijos', '03', 'Catupiry', 'Mussarela, parmesão, provolone, gorgonzola'),
       ('04', 'Frango com Catupiry', '01', 'Catupiry', 'Frango desfiado, Catupiry, mussarela'),
       ('05', 'Portuguesa', '02', 'Cheddar', 'Presunto, mussarela, ovos, cebola, azeitona, pimentão');

INSERT INTO Pedidos (ID_pedido, ID_cliente, ID_pizza, Preco)
VALUES ('000001', '00002', '01', 30.00),
	   ('000002', '00003', '02', 35.00),
	   ('000003', '00004', '03', 40.00),
	   ('000004', '00005', '04', 32.50),
	   ('000005', '00006', '05', 37.50);

INSERT INTO Fornecedores (ID_fornecedor, ID_materia, CNPJ, Telefone)
VALUES ('00001', '00001', '12345678901234', '11987654321'),
       ('00002', '00002', '23456789012345', '11987654322'),
       ('00003', '00003', '34567890123456', '11987654323'),
       ('00004', '00004', '45678901234567', '11987654324'),
       ('00005', '00005', '56789012345678', '11987654325');
       
INSERT INTO Funcionarios (ID_func, Nome, Salario, Qualidade)
VALUES ('00001', 'Pedro', 2500.00, 4.5),
       ('00002', 'Ana', 2800.00, 4.2),
       ('00003', 'Mário', 2300.00, 4.7),
       ('00004', 'Carla', 2600.00, 4.4),
       ('00005', 'João', 2700.00, 4.6);