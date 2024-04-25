DROP DATABASE IF EXISTS Restaurante;

CREATE DATABASE Restaurante;

USE Restaurante;

CREATE TABLE IF NOT EXISTS Clientes(
		ID_cliente int(8) AUTO_INCREMENT,
		CPF varchar(11) not null,
		Nome varchar(255),
		Endereco varchar(255),
		Telefone varchar(12),
		PRIMARY KEY (ID_cliente)
);

CREATE TABLE IF NOT EXISTS Funcionarios(
		ID_func int(5) AUTO_INCREMENT,
		CPF varchar(11) not null,
		Nome varchar(255),
		Endereco varchar(255),
		Telefone varchar(12),
        Salario decimal(7,2),
		PRIMARY KEY (ID_func)
);

CREATE TABLE IF NOT EXISTS Pratos(
		ID_prato int(8) AUTO_INCREMENT,
        Ingredientes varchar(255),
        Descricao varchar(255),
        Precos decimal(5,2),
        PRIMARY KEY (ID_prato)
);

CREATE TABLE IF NOT EXISTS Fornecedores(
		ID_fornecedor int(5) AUTO_INCREMENT,
		CNPJ varchar(14),
		Telefone varchar(12),
        Valor_materia decimal(8,2),
		PRIMARY KEY (ID_fornecedor)
);

CREATE TABLE IF NOT EXISTS Reservas(
		Data_ datetime,
        ID_cliente int (8),
        FOREIGN KEY (ID_cliente) REFERENCES Clientes (ID_cliente)
);

CREATE TABLE IF NOT EXISTS Pedidos(
		ID_pedido int(8) AUTO_INCREMENT,
		ID_cliente int(8),
		ID_prato int(2),
		Preco decimal(4,2),
		Endereco varchar(255),
        PRIMARY KEY (ID_pedido),
		FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
		FOREIGN KEY (ID_preto) REFERENCES Pratos (ID_prato)
);

CREATE TABLE IF NOT EXISTS Estoque(
		ID_fornecedor int(5) AUTO_INCREMENT,
        ID_materia varchar(6),
        PRIMARY KEY (ID_materia)
);