/*@author Carlos Santos*/

SELECT * 
FROM Login 
WHERE Username = 'mariasilva' AND Senha = 'senha123'; /*Script das informações de login*/

SELECT *
FROM Clientes
WHERE ID_cliente = '1';

SELECT Nome
FROM Funcionarios
Where ID_filial = '1'; /*Script de funcionários de cada filial*/

SELECT Nome, ID_filial
FROM Clientes
ORDER BY ID_filial ASC; /*Script de cada cliente organizado por filial*/

SELECT *
FROM Pratos
Where Valor > 19.00; /*Script onde o gerente que escolher pratos acima de R$19 para ter desconto*/