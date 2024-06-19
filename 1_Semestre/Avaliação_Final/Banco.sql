DROP DATABASE IF EXISTS Restaurante;

CREATE DATABASE Restaurante;

USE Restaurante;

-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS Clientes(
    ID_cliente int(8) AUTO_INCREMENT,
    CPF varchar(11) not null,
    Nome varchar(255),
    Senha varchar(255) not null,
    Sexo varchar(255),
    Idade varchar(3),
    Endereco varchar(255),
    Email varchar(255),
    Telefone varchar(12),
    Data_cadastro datetime,
    PRIMARY KEY (ID_cliente)
);

-- Tabela de Login
CREATE TABLE IF NOT EXISTS Login(
    ID_login int(8) AUTO_INCREMENT,
    ID_cliente int(8),
    Username varchar(255) NOT NULL,
    Senha varchar(255) NOT NULL,
    PRIMARY KEY (ID_login),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente)
);

-- Tabela de Filiais
CREATE TABLE IF NOT EXISTS Filiais(
    ID_filial int(3) AUTO_INCREMENT,
    Endereco varchar(255),
    Email varchar(255),
    Telefone varchar(12),
    Quant_mesas int(3),
    Avaliacao decimal(4,2),
    PRIMARY KEY (ID_filial)
);

-- Tabela de Funcionários
CREATE TABLE IF NOT EXISTS Funcionarios(
    ID_func int(5) AUTO_INCREMENT,
    CPF varchar(11) not null,
    Nome varchar(255),
    Sexo varchar(255),
    Idade varchar(3),
    Endereco varchar(255),
    Email varchar(255),
    Telefone varchar(12),
    ID_filial int(3),
    Cargo varchar(255),
    Data_contatacao datetime,
    PRIMARY KEY (ID_func),
    FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);

-- Tabela de Reservas
CREATE TABLE IF NOT EXISTS Reservas(
    ID_reserva int(5) AUTO_INCREMENT not null,
    Data_reserva datetime,
    ID_cliente int(8),
    Mesa varchar(5),
    ID_filial int(3),
    Capacidade varchar(2),
    PRIMARY KEY (ID_reserva),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
    FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);

-- Tabela de Fornecedores
CREATE TABLE IF NOT EXISTS Fornecedores(
    Nome varchar(255),
    ID_fornecedor int(5) AUTO_INCREMENT,
    CNPJ varchar(14),
    Tipo_material varchar(255),
    Email varchar(255),
    Telefone varchar(12),
    Valor_material decimal(8,2),
    PRIMARY KEY (ID_fornecedor)
);

-- Tabela de Estoque
CREATE TABLE IF NOT EXISTS Estoque(
    ID_fornecedor int(5),
    ID_materia int(6) AUTO_INCREMENT,
    Quantidade int(5),
    ID_filial int(3),
    PRIMARY KEY (ID_materia),
    FOREIGN KEY (ID_fornecedor) REFERENCES Fornecedores(ID_fornecedor),
    FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);

-- Tabela de Pratos
CREATE TABLE IF NOT EXISTS Pratos(
    ID_prato int(3) AUTO_INCREMENT,
    Nome varchar(255),
    Descricao varchar(255),
    Valor decimal(5,2),
    PRIMARY KEY (ID_prato)
);

-- Tabela de Bebidas
CREATE TABLE IF NOT EXISTS Bebidas(
    ID_bebida int(3) AUTO_INCREMENT,
    Nome varchar(255),
    Descricao varchar(255),
    Valor decimal (4,2),
    PRIMARY KEY (ID_bebida)
);

-- Tabela de Ingredientes
CREATE TABLE IF NOT EXISTS Ingredientes(
    ID_ingrediente int(3) AUTO_INCREMENT,
    Nome varchar(255),
    Unidade_medida varchar(255),
    ID_prato int(3),
    ID_bebida int(3),
    PRIMARY KEY (ID_ingrediente),
    FOREIGN KEY (ID_prato) REFERENCES Pratos(ID_prato),
    FOREIGN KEY (ID_bebida) REFERENCES Bebidas(ID_bebida)
);

-- Tabela de Pedidos
CREATE TABLE IF NOT EXISTS Pedidos(
    ID_pedido int(8) AUTO_INCREMENT,
    ID_cliente int(8),
    ID_prato int(2),
    ID_bebida int(3),
    Valor decimal(4,2),
    Tipo_pagamento varchar(255),
    Endereco varchar(255),
    Data_pedido datetime,
    PRIMARY KEY (ID_pedido),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
    FOREIGN KEY (ID_prato) REFERENCES Pratos(ID_prato),
    FOREIGN KEY (ID_bebida) REFERENCES Bebidas(ID_bebida)
);

-- Tabela de Entregas
CREATE TABLE IF NOT EXISTS Entregas(
    ID_entrega int(5) AUTO_INCREMENT,
    Endereco varchar(255),
    ID_pedido int(8),
    Data_entrega datetime,
    PRIMARY KEY (ID_entrega),
    FOREIGN KEY (ID_pedido) REFERENCES Pedidos(ID_pedido)
);

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (CPF, Nome, Senha, Sexo, Idade, Endereco, Email, Telefone, Data_cadastro) VALUES 
('12345678901', 'Maria Silva', 'senha123', 'Feminino', '25', 'Rua A, 123', 'maria.silva@gmail.com', '9876543210', '2023-01-01 10:00:00'),
('23456789012', 'João Souza', 'senha234', 'Masculino', '30', 'Rua B, 456', 'joao.souza@gmail.com', '9876543211', '2023-01-02 11:00:00'),
('34567890123', 'Ana Pereira', 'senha345', 'Feminino', '22', 'Rua C, 789', 'ana.pereira@gmail.com', '9876543212', '2023-01-03 12:00:00'),
('45678901234', 'Carlos Santos', 'senha456', 'Masculino', '28', 'Rua D, 101', 'carlos.santos@gmail.com', '9876543213', '2023-01-04 13:00:00'),
('56789012345', 'Julia Oliveira', 'senha567', 'Feminino', '26', 'Rua E, 202', 'julia.oliveira@gmail.com', '9876543214', '2023-01-05 14:00:00'),
('67890123456', 'Pedro Lima', 'senha678', 'Masculino', '29', 'Rua F, 303', 'pedro.lima@gmail.com', '9876543215', '2023-01-06 15:00:00'),
('78901234567', 'Mariana Costa', 'senha789', 'Feminino', '27', 'Rua G, 404', 'mariana.costa@gmail.com', '9876543216', '2023-01-07 16:00:00'),
('89012345678', 'Lucas Almeida', 'senha890', 'Masculino', '24', 'Rua H, 505', 'lucas.almeida@gmail.com', '9876543217', '2023-01-08 17:00:00'),
('90123456789', 'Larissa Carvalho', 'senha901', 'Feminino', '23', 'Rua I, 606', 'larissa.carvalho@gmail.com', '9876543218', '2023-01-09 18:00:00'),
('01234567890', 'Ricardo Araújo', 'senha012', 'Masculino', '31', 'Rua J, 707', 'ricardo.araujo@gmail.com', '9876543219', '2023-01-10 19:00:00');

-- Inserir dados na tabela Login
INSERT INTO Login (ID_cliente, Username, Senha) VALUES
(1, 'mariasilva', 'senha123'),
(2, 'joaosouza', 'senha234'),
(3, 'anapereira', 'senha345'),
(4, 'carlossantos', 'senha456'),
(5, 'juliaoliveira', 'senha567'),
(6, 'pedrolima', 'senha678'),
(7, 'marianacosta', 'senha789'),
(8, 'lucasalmeida', 'senha890'),
(9, 'larissacarvalho', 'senha901'),
(10, 'ricardoaraujo', 'senha012');

-- Inserir dados na tabela Filiais
INSERT INTO Filiais (Endereco, Email, Telefone, Quant_mesas, Avaliacao) VALUES
('Rua K, 123', 'filial1@restaurante.com', '1111111111', 10, 4.5),
('Rua L, 456', 'filial2@restaurante.com', '2222222222', 20, 4.0),
('Rua M, 789', 'filial3@restaurante.com', '3333333333', 15, 4.2),
('Rua N, 101', 'filial4@restaurante.com', '4444444444', 12, 4.7),
('Rua O, 202', 'filial5@restaurante.com', '5555555555', 18, 4.3),
('Rua P, 303', 'filial6@restaurante.com', '6666666666', 8, 4.8),
('Rua Q, 404', 'filial7@restaurante.com', '7777777777', 25, 4.1),
('Rua R, 505', 'filial8@restaurante.com', '8888888888', 30, 4.6),
('Rua S, 606', 'filial9@restaurante.com', '9999999999', 22, 4.4),
('Rua T, 707', 'filial10@restaurante.com', '1010101010', 14, 4.9);

-- Inserir dados na tabela Funcionarios
INSERT INTO Funcionarios (CPF, Nome, Sexo, Idade, Endereco, Email, Telefone, ID_filial, Cargo, Data_contatacao) VALUES
('11111111111', 'José da Silva', 'Masculino', '35', 'Rua U, 808', 'jose.silva@gmail.com', '1212121212', 1, 'Garçom', '2023-02-01 10:00:00'),
('22222222222', 'Ana de Souza', 'Feminino', '28', 'Rua V, 909', 'ana.souza@gmail.com', '1313131313', 2, 'Cozinheira', '2023-02-02 11:00:00'),
('33333333333', 'Pedro Ferreira', 'Masculino', '30', 'Rua W, 101', 'pedro.ferreira@gmail.com', '1414141414', 3, 'Gerente', '2023-02-03 12:00:00'),
('44444444444', 'Mariana Costa', 'Feminino', '26', 'Rua X, 202', 'mariana.costa@gmail.com', '1515151515', 4, 'Atendente', '2023-02-04 13:00:00'),
('55555555555', 'Lucas Pereira', 'Masculino', '32', 'Rua Y, 303', 'lucas.pereira@gmail.com', '1616161616', 5, 'Chef', '2023-02-05 14:00:00'),
('66666666666', 'Larissa Almeida', 'Feminino', '29', 'Rua Z, 404', 'larissa.almeida@gmail.com', '1717171717', 6, 'Auxiliar de Cozinha', '2023-02-06 15:00:00'),
('77777777777', 'Ricardo Gomes', 'Masculino', '34', 'Rua AA, 505', 'ricardo.gomes@gmail.com', '1818181818', 7, 'Gerente', '2023-02-07 16:00:00'),
('88888888888', 'Fernanda Santos', 'Feminino', '27', 'Rua BB, 606', 'fernanda.santos@gmail.com', '1919191919', 8, 'Cozinheira', '2023-02-08 17:00:00'),
('99999999999', 'Carlos Oliveira', 'Masculino', '31', 'Rua CC, 707', 'carlos.oliveira@gmail.com', '2020202020', 9, 'Garçom', '2023-02-09 18:00:00'),
('00000000000', 'Julia Araújo', 'Feminino', '33', 'Rua DD, 808', 'julia.araujo@gmail.com', '2121212121', 10, 'Atendente', '2023-02-10 19:00:00');

-- Inserir dados na tabela Reservas
INSERT INTO Reservas (Data_reserva, ID_cliente, Mesa, ID_filial, Capacidade) VALUES
('2023-03-01 19:00:00', 1, 'M1', 1, '4'),
('2023-03-02 20:00:00', 2, 'M2', 2, '2'),
('2023-03-03 21:00:00', 3, 'M3', 3, '6'),
('2023-03-04 18:00:00', 4, 'M4', 4, '8'),
('2023-03-05 19:30:00', 5, 'M5', 5, '4'),
('2023-03-06 20:30:00', 6, 'M6', 6, '2'),
('2023-03-07 21:30:00', 7, 'M7', 7, '6'),
('2023-03-08 18:30:00', 8, 'M8', 8, '8'),
('2023-03-09 19:00:00', 9, 'M9', 9, '4'),
('2023-03-10 20:00:00', 10, 'M10', 10, '2');

-- Inserir dados na tabela Fornecedores
INSERT INTO Fornecedores (Nome, CNPJ, Tipo_material, Email, Telefone, Valor_material) VALUES
('Fornecedor 1', '11111111111111', 'Carne', 'fornecedor1@fornecedor.com', '1234567890', 500.00),
('Fornecedor 2', '22222222222222', 'Vegetais', 'fornecedor2@fornecedor.com', '2234567890', 300.00),
('Fornecedor 3', '33333333333333', 'Frutas', 'fornecedor3@fornecedor.com', '3234567890', 200.00),
('Fornecedor 4', '44444444444444', 'Laticínios', 'fornecedor4@fornecedor.com', '4234567890', 400.00),
('Fornecedor 5', '55555555555555', 'Bebidas', 'fornecedor5@fornecedor.com', '5234567890', 350.00),
('Fornecedor 6', '66666666666666', 'Condimentos', 'fornecedor6@fornecedor.com', '6234567890', 150.00),
('Fornecedor 7', '77777777777777', 'Cereais', 'fornecedor7@fornecedor.com', '7234567890', 250.00),
('Fornecedor 8', '88888888888888', 'Legumes', 'fornecedor8@fornecedor.com', '8234567890', 100.00),
('Fornecedor 9', '99999999999999', 'Pães', 'fornecedor9@fornecedor.com', '9234567890', 450.00),
('Fornecedor 10', '00000000000000', 'Doces', 'fornecedor10@fornecedor.com', '0234567890', 550.00);

-- Inserir dados na tabela Estoque
INSERT INTO Estoque (ID_fornecedor, Quantidade, ID_filial) VALUES
(1, 100, 1),
(2, 200, 2),
(3, 150, 3),
(4, 250, 4),
(5, 300, 5),
(6, 350, 6),
(7, 400, 7),
(8, 450, 8),
(9, 500, 9),
(10, 550, 10);

-- Inserir dados na tabela Pratos
INSERT INTO Pratos (Nome, Descricao, Valor) VALUES
('Prato 1', 'Descrição do Prato 1', 25.50),
('Prato 2', 'Descrição do Prato 2', 30.00),
('Prato 3', 'Descrição do Prato 3', 20.00),
('Prato 4', 'Descrição do Prato 4', 15.00),
('Prato 5', 'Descrição do Prato 5', 22.50),
('Prato 6', 'Descrição do Prato 6', 18.00),
('Prato 7', 'Descrição do Prato 7', 27.50),
('Prato 8', 'Descrição do Prato 8', 32.00),
('Prato 9', 'Descrição do Prato 9', 19.50),
('Prato 10', 'Descrição do Prato 10', 21.00);

-- Inserir dados na tabela Bebidas
INSERT INTO Bebidas (Nome, Descricao, Valor) VALUES
('Bebida 1', 'Descrição da Bebida 1', 5.50),
('Bebida 2', 'Descrição da Bebida 2', 6.00),
('Bebida 3', 'Descrição da Bebida 3', 4.50),
('Bebida 4', 'Descrição da Bebida 4', 7.00),
('Bebida 5', 'Descrição da Bebida 5', 5.00),
('Bebida 6', 'Descrição da Bebida 6', 6.50),
('Bebida 7', 'Descrição da Bebida 7', 4.00),
('Bebida 8', 'Descrição da Bebida 8', 7.50),
('Bebida 9', 'Descrição da Bebida 9', 5.00),
('Bebida 10', 'Descrição da Bebida 10', 6.00);

-- Inserir dados na tabela Ingredientes
INSERT INTO Ingredientes (Nome, Unidade_medida, ID_prato, ID_bebida) VALUES
('Ingrediente 1', 'kg', 1, 1),
('Ingrediente 2', 'g', 2, 2),
('Ingrediente 3', 'ml', 3, 3),
('Ingrediente 4', 'L', 4, 4),
('Ingrediente 5', 'kg', 5, 5),
('Ingrediente 6', 'g', 6, 6),
('Ingrediente 7', 'ml', 7, 7),
('Ingrediente 8', 'L', 8, 8),
('Ingrediente 9', 'kg', 9, 9),
('Ingrediente 10', 'g', 10, 10);

-- Inserir dados na tabela Pedidos
INSERT INTO Pedidos (ID_cliente, ID_prato, ID_bebida, Valor, Tipo_pagamento, Endereco, Data_pedido) VALUES
(1, 1, 1, 31.00, 'Cartão', 'Rua A, 123', '2023-04-01 12:00:00'),
(2, 2, 2, 36.00, 'Dinheiro', 'Rua B, 456', '2023-04-02 13:00:00'),
(3, 3, 3, 24.50, 'Cartão', 'Rua C, 789', '2023-04-03 14:00:00'),
(4, 4, 4, 22.00, 'Cartão', 'Rua D, 101', '2023-04-04 15:00:00'),
(5, 5, 5, 27.50, 'Dinheiro', 'Rua E, 202', '2023-04-05 16:00:00'),
(6, 6, 6, 24.50, 'Cartão', 'Rua F, 303', '2023-04-06 17:00:00'),
(7, 7, 7, 31.50, 'Dinheiro', 'Rua G, 404', '2023-04-07 18:00:00'),
(8, 8, 8, 39.50, 'Cartão', 'Rua H, 505', '2023-04-08 19:00:00'),
(9, 9, 9, 24.50, 'Dinheiro', 'Rua I, 606', '2023-04-09 20:00:00'),
(10, 10, 10, 27.00, 'Cartão', 'Rua J, 707', '2023-04-10 21:00:00');

-- Inserir dados na tabela Entregas
INSERT INTO Entregas (Endereco, ID_pedido, Data_entrega) VALUES
('Rua A, 123', 1, '2023-04-01 13:00:00'),
('Rua B, 456', 2, '2023-04-02 14:00:00'),
('Rua C, 789', 3, '2023-04-03 15:00:00'),
('Rua D, 101', 4, '2023-04-04 16:00:00'),
('Rua E, 202', 5, '2023-04-05 17:00:00'),
('Rua F, 303', 6, '2023-04-06 18:00:00'),
('Rua G, 404', 7, '2023-04-07 19:00:00'),
('Rua H, 505', 8, '2023-04-08 20:00:00'),
('Rua I, 606', 9, '2023-04-09 21:00:00'),
('Rua J, 707', 10, '2023-04-10 22:00:00');
