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
		ID_materia varchar(6),
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
