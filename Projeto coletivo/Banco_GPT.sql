DROP DATABASE IF EXISTS Restaurante;

CREATE DATABASE Restaurante;

USE Restaurante;

-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS Clientes(
    ID_cliente INT(8) AUTO_INCREMENT PRIMARY KEY,
    CPF VARCHAR(11) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(12)
);

-- Tabela de Filiais
CREATE TABLE IF NOT EXISTS Filiais(
    ID_filial INT(3) AUTO_INCREMENT PRIMARY KEY,
    Endereco VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(12),
    Quant_mesas INT(3),
    Avaliacao DECIMAL(4,2)
);

-- Tabela de Funcionários
CREATE TABLE IF NOT EXISTS Funcionarios(
    ID_func INT(5) AUTO_INCREMENT PRIMARY KEY,
    CPF VARCHAR(11) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(12),
    ID_filial INT(3),
    FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);

-- Tabela de Reservas
CREATE TABLE IF NOT EXISTS Reservas(
    ID_reserva INT(8) AUTO_INCREMENT PRIMARY KEY,
    Data_reserva DATETIME,
    ID_cliente INT(8),
    Mesa VARCHAR(2),
    ID_filial INT(3),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes (ID_cliente),
    FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);

-- Tabela de Fornecedores
CREATE TABLE IF NOT EXISTS Fornecedores(
    ID_fornecedor INT(5) AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    CNPJ VARCHAR(14),
    Tipo_material VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(12),
    Valor_material DECIMAL(8,2)
);

-- Tabela de Estoque
CREATE TABLE IF NOT EXISTS Estoque(
    ID_estoque INT(5) AUTO_INCREMENT PRIMARY KEY,
    ID_fornecedor INT(5),
    ID_materia VARCHAR(6),
    Quantidade INT(5),
    ID_filial INT(3),
    FOREIGN KEY (ID_fornecedor) REFERENCES Fornecedores (ID_fornecedor),
    FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);

-- Tabela de Ingredientes
CREATE TABLE IF NOT EXISTS Ingredientes(
    ID_ingrediente INT(3) AUTO_INCREMENT PRIMARY KEY,
    Unidade_medida VARCHAR(255)
);

-- Tabela de Pratos
CREATE TABLE IF NOT EXISTS Pratos(
    ID_prato INT(8) AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Descricao VARCHAR(255),
    Valor DECIMAL(5,2)
);

-- Tabela de Bebidas
CREATE TABLE IF NOT EXISTS Bebidas(
    ID_bebida INT(3) AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Descricao VARCHAR(255),
    Valor DECIMAL(4,2)
);

-- Tabela de Pedidos
CREATE TABLE IF NOT EXISTS Pedidos(
    ID_pedido INT(8) AUTO_INCREMENT PRIMARY KEY,
    ID_cliente INT(8),
    ID_prato INT(2),
    ID_bebida INT(3),
    Valor DECIMAL(4,2),
    Tipo_pagamento VARCHAR(255),
    Endereco VARCHAR(255),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
    FOREIGN KEY (ID_prato) REFERENCES Pratos (ID_prato),
    FOREIGN KEY (ID_bebida) REFERENCES Bebidas (ID_bebida)
);

-- Tabela de Entregas
CREATE TABLE IF NOT EXISTS Entregas(
    ID_entrega INT(5) AUTO_INCREMENT PRIMARY KEY,
    Endereco VARCHAR(255),
    ID_pedido INT(8),
    FOREIGN KEY (ID_pedido) REFERENCES Pedidos (ID_pedido)
);
