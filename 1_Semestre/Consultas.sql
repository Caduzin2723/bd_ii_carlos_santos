/*SELECT Filiais.Endereco, Clientes.ID_cliente, Clientes.Nome, Clientes.Cpf, Clientes.Email, Reservas.ID_reserva, Reservas.Data_reserva, Reservas.ID_filial
FROM Clientes, Reservas, Filiais
WHERE 
Clientes.ID_cliente = Reservas.ID_cliente and
Reservas.ID_filial = Filiais.ID_filial and
Clientes.ID_cliente = 4;*/

SELECT Clientes.ID_cliente, Clientes.Nome, Filiais.ID_filial, Filiais.Endereco
FROM Clientes, Filiais
INNER JOIN Filiais ON Clientes.ID_filial = Filiais.ID_filial;
