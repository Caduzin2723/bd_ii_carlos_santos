-- Join para mostrar mostrar os dados do cliente com ID = 4
SELECT Filiais.Endereco, Clientes.ID_cliente, Clientes.Nome, Clientes.Cpf, Clientes.Email, Reservas.ID_reserva, Reservas.Data_reserva, Reservas.ID_filial
FROM Clientes, Reservas, Filiais
WHERE 
Clientes.ID_cliente = Reservas.ID_cliente and
Reservas.ID_filial = Filiais.ID_filial and
Clientes.ID_cliente = 4;

-- Join que mostra todos os clientes e seusrespectivos pedidos/entregas
SELECT Clientes.Nome, Clientes.Endereco, Clientes.email, Pedidos.ID_pedido
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ID_cliente = Pedidos.ID_cliente;

-- Join para mostrar o ID e o endereço das filiais e o ID e nome dos clientes.
SELECT Filiais.ID_filial, Filiais.Endereco AS Endereco_Filial, Clientes.ID_cliente, Clientes.Nome
FROM Filiais
RIGHT JOIN Clientes ON Filiais.ID_filial = Clientes.ID_filial;

-- Join paramostrar todas as entregas e seus respectivos pedidos
SELECT * 
FROM Pedidos
FULL JOIN Entregas ON Pedidos.ID_pedido = Entregas.ID_pedido;
