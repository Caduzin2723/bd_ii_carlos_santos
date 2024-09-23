DROP DATABASE IF EXISTS Pokemon;

CREATE DATABASE Pokemon;

USE Pokemon;

CREATE TABLE pokemon(
    Nome varchar (50),
    Pokedex int (3),
    Nomedex varchar (50),
    Ataque1 varchar (50),
    Ataque2 varchar (50),
    Ataque3 varchar (50),
    Ataque4 varchar (50),
    Tipo1 varchar (50),
    Tipo2 varchar (50),
    Nature varchar (50),
    Pokebola varchar (50),
    Item_pokemon varchar (50),
    Combates int (5),
    Vitorias int (5),
    Derrotas int (5),
    Empate int (5),
    ID_Treinador varchar (50),
    foreign key (ID_Treinador) references Treinadores(ID_Treinador)
    );
    
CREATE TABLE Movimentos(
	
);

CREATE TABLE Treinadores(
    Nome varchar (50),
    ID_treinador varchar (50),
    Idade varchar (3),
    Pokemon1 varchar (50),
    Pokemon2 varchar (50),
    Pokemon3 varchar (50),
    Pokemon4 varchar (50),
    Pokemon5 varchar (50),
    Pokemon6 varchar (50),
    Insignias varchar (2)
);

CREATE TABLE Utilitarios(
    ID_item varchar (50),
    Nome varchar (50),
    Descrição varchar (50),
    Preço decimal (2,4),
    Consumivel boolean
);
