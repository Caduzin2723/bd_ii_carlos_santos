DROP DATABASE IF EXISTS Pokemon;

CREATE DATABASE Pokemon;

USE Pokemon;

CREATE TABLE Movimentos(
    Nome varchar(50),
    PP int,
    Acerto int,
    Poder int,
    Tipo varchar(50),
    Descricao varchar(255)
);

CREATE TABLE Utilitarios(
    ID_item varchar(50),
    Nome varchar(50),
    Descricao varchar(255),
    Preco decimal(8,2),
    Consumivel boolean
);

CREATE TABLE Treinadores(
    Nome varchar(50),
    ID_treinador varchar(50) PRIMARY KEY,
    Idade int,
    Pokemon1 varchar(50),
    Pokemon2 varchar(50),
    Pokemon3 varchar(50),
    Pokemon4 varchar(50),
    Pokemon5 varchar(50),
    Pokemon6 varchar(50),
    Insignias int
);

CREATE TABLE pokemon(
    Nome varchar(50),
    Pokedex int,
    Nomedex varchar(50),
    Ataque1 varchar(50),
    Ataque2 varchar(50),
    Ataque3 varchar(50),
    Ataque4 varchar(50),
    Tipo1 varchar(50),
    Tipo2 varchar(50),
    Nature varchar(50),
    Pokebola varchar(50),
    Item_pokemon varchar(50),
    Combates int,
    Vitorias int,
    Derrotas int,
    Empate int,
    ID_Treinador varchar(50),
    FOREIGN KEY (ID_Treinador) REFERENCES Treinadores(ID_treinador)
);

INSERT INTO Movimentos (Nome, PP, Acerto, Poder, Tipo, Descricao)
VALUES
('Thunder Shock', 30, 100, 40, 'Electric', 'Um choque elétrico fraco ataca o oponente.'),
('Flamethrower', 15, 100, 90, 'Fire', 'Um ataque de chama poderosa que pode causar queimaduras.'),
('Hydro Pump', 5, 80, 110, 'Water', 'Dispara um jato de água de alta pressão contra o alvo.'),
('Solar Beam', 10, 100, 120, 'Grass', 'Absorve luz solar no primeiro turno e dispara no segundo.'),
('Quick Attack', 30, 100, 40, 'Normal', 'Um ataque rápido que sempre atinge primeiro.'),
('Hyper Beam', 5, 90, 150, 'Normal', 'Um ataque devastador, o usuário precisa recarregar no próximo turno.'),
('Ice Beam', 10, 100, 90, 'Ice', 'Dispara um raio de gelo que pode congelar o alvo.'),
('Psychic', 10, 100, 90, 'Psychic', 'Lança uma onda psíquica para atacar o oponente.'),
('Shadow Ball', 15, 100, 80, 'Ghost', 'Lança uma bola de sombra para diminuir a defesa especial do oponente.'),
('Rock Slide', 10, 90, 75, 'Rock', 'Lança pedras no oponente, com chance de fazer flinchar.'),
('Iron Tail', 15, 75, 100, 'Steel', 'Ataca o oponente com uma cauda de aço.'),
('Dragon Claw', 15, 100, 80, 'Dragon', 'Ataca o alvo com garras afiadas.'),
('Earthquake', 10, 100, 100, 'Ground', 'Causa um terremoto que atinge todos os Pokémon no campo.'),
('Sludge Bomb', 10, 100, 90, 'Poison', 'Lança uma bomba tóxica que pode envenenar o alvo.'),
('Thunderbolt', 15, 100, 90, 'Electric', 'Ataca com um relâmpago poderoso. Pode paralisar o alvo.'),
('Surf', 15, 100, 90, 'Water', 'Invoca uma onda para atacar o oponente.'),
('Confuse Ray', 10, NULL, NULL, 'Ghost', 'Lança um raio que confunde o oponente.'),
('Will-O-Wisp', 15, 85, NULL, 'Fire', 'Invoca chamas espectrais que causam queimadura.'),
('Fly', 15, 95, 90, 'Flying', 'O Pokémon voa no primeiro turno e ataca no segundo.'),
('Bite', 25, 100, 60, 'Dark', 'Morde o alvo, podendo causar flinch.'),
('Stun Spore', 30, 75, NULL, 'Grass', 'Libera esporos que paralisam o oponente.'),
('Leech Seed', 10, 90, NULL, 'Grass', 'Planta uma semente que drena vida do oponente a cada turno.'),
('Gust', 35, 100, 40, 'Flying', 'Um golpe de vento que atinge o oponente.'),
('Dynamic Punch', 5, 50, 100, 'Fighting', 'Um soco forte que sempre causa confusão.'),
('Tackle', 35, 95, 40, 'Normal', 'Um ataque físico simples, colidindo com o oponente.'),
('Fire Fang', 15, 95, 65, 'Fire', 'Morde o oponente com presas flamejantes, pode causar queimadura.'),
('Water Gun', 25, 100, 40, 'Water', 'Um jato de água fraco que atinge o oponente.'),
('Crunch', 15, 100, 80, 'Dark', 'Morde o alvo com força, podendo diminuir a defesa do oponente.'),
('Body Slam', 15, 100, 85, 'Normal', 'Um ataque corporal que pode paralisar o oponente.'),
('Thunder Punch', 15, 100, 75, 'Electric', 'Um soco eletrificado que pode paralisar o alvo.');

INSERT INTO Utilitarios (ID_item, Nome, Descrição, Preço, Consumivel)
VALUES
('U001', 'Potion', 'Restaura 20 HP de um Pokémon.', 20.00, TRUE),
('U002', 'Super Potion', 'Restaura 50 HP de um Pokémon.', 50.00, TRUE),
('U003', 'Hyper Potion', 'Restaura 200 HP de um Pokémon.', 150.00, TRUE),
('U004', 'Max Potion', 'Restaura todo o HP de um Pokémon.', 300.00, TRUE),
('U005', 'Full Restore', 'Restaura todo o HP e remove status de um Pokémon.', 400.00, TRUE),
('U006', 'Revive', 'Revive um Pokémon com metade do HP.', 200.00, TRUE),
('U007', 'Max Revive', 'Revive um Pokémon com todo o HP.', 500.00, TRUE),
('U008', 'Antidote', 'Cura o envenenamento de um Pokémon.', 10.00, TRUE),
('U009', 'Paralyze Heal', 'Cura a paralisia de um Pokémon.', 15.00, TRUE),
('U010', 'Burn Heal', 'Cura a queimadura de um Pokémon.', 15.00, TRUE),
('U011', 'Ice Heal', 'Descongela um Pokémon congelado.', 15.00, TRUE),
('U012', 'Full Heal', 'Cura qualquer condição de status de um Pokémon.', 40.00, TRUE),
('U013', 'Escape Rope', 'Permite escapar de uma caverna ou local fechado.', 55.00, FALSE),
('U014', 'Repel', 'Mantém Pokémon selvagens afastados por 100 passos.', 50.00, TRUE),
('U015', 'Super Repel', 'Mantém Pokémon selvagens afastados por 200 passos.', 100.00, TRUE),
('U016', 'Max Repel', 'Mantém Pokémon selvagens afastados por 250 passos.', 150.00, TRUE),
('U017', 'Pokeball', 'Usada para capturar Pokémon.', 20.00, TRUE),
('U018', 'Great Ball', 'Uma Pokébola com uma maior taxa de captura.', 50.00, TRUE),
('U019', 'Ultra Ball', 'Uma Pokébola com uma taxa de captura ainda maior.', 100.00, TRUE),
('U020', 'Master Ball', 'Garante a captura de qualquer Pokémon.', 1000.00, TRUE),
('U021', 'Rare Candy', 'Aumenta o nível de um Pokémon em 1.', 300.00, TRUE),
('U022', 'PP Up', 'Aumenta o PP máximo de um movimento de Pokémon.', 200.00, TRUE),
('U023', 'PP Max', 'Maximiza o PP de um movimento de Pokémon.', 500.00, TRUE),
('U024', 'Oran Berry', 'Restaura 10 HP de um Pokémon durante a batalha.', 10.00, TRUE),
('U025', 'Sitrus Berry', 'Restaura 25% do HP de um Pokémon durante a batalha.', 30.00, TRUE),
('U026', 'Leftovers', 'Recupera uma pequena quantidade de HP a cada turno.', 100.00, FALSE),
('U027', 'Focus Sash', 'Previne que o Pokémon seja nocauteado com um golpe.', 200.00, FALSE),
('U028', 'Choice Band', 'Aumenta o poder de ataque, mas limita a um movimento.', 300.00, FALSE),
('U029', 'Life Orb', 'Aumenta o poder de ataque ao custo de HP.', 250.00, FALSE),
('U030', 'Amulet Coin', 'Dobra o dinheiro ganho em batalhas quando o Pokémon que segura participa.', 150.00, FALSE);

INSERT INTO pokemon (Nome, Pokedex, Nomedex, Ataque1, Ataque2, Ataque3, Ataque4, Tipo1, Tipo2, Nature, Pokebola, Item_pokemon, Combates, Vitorias, Derrotas, Empate, ID_Treinador)
VALUES 
('Sparky', 25, 'Pikachu', 'Thunder Shock', 'Quick Attack', 'Iron Tail', 'Electro Ball', 'Electric', NULL, 'Jolly', 'Pokeball', 'Oran Berry', 50, 30, 15, 5, 'T001'),
('Blaze', 4, 'Charmander', 'Ember', 'Scratch', 'Growl', 'Flamethrower', 'Fire', NULL, 'Brave', 'Great Ball', 'Charcoal', 40, 20, 18, 2, 'T002'),
('Leafy', 1, 'Bulbasaur', 'Vine Whip', 'Tackle', 'Leech Seed', 'Razor Leaf', 'Grass', 'Poison', 'Bold', 'Ultra Ball', 'Leftovers', 35, 15, 18, 2, 'T003'),
('Shellshock', 7, 'Squirtle', 'Water Gun', 'Tackle', 'Withdraw', 'Bite', 'Water', NULL, 'Calm', 'Net Ball', 'Mystic Water', 45, 22, 20, 3, 'T001'),
('Feathers', 16, 'Pidgey', 'Gust', 'Quick Attack', 'Wing Attack', 'Sand-Attack', 'Normal', 'Flying', 'Modest', 'Pokeball', NULL, 38, 18, 17, 3, 'T004'),
('Buddy', 133, 'Eevee', 'Tackle', 'Quick Attack', 'Bite', 'Sand-Attack', 'Normal', NULL, 'Jolly', 'Luxury Ball', 'Soothe Bell', 32, 17, 13, 2, 'T002'),
('Sleepy', 143, 'Snorlax', 'Body Slam', 'Rest', 'Snore', 'Crunch', 'Normal', NULL, 'Relaxed', 'Ultra Ball', 'Leftovers', 60, 35, 20, 5, 'T003'),
('Shadow', 94, 'Gengar', 'Shadow Ball', 'Hypnosis', 'Dream Eater', 'Sludge Bomb', 'Ghost', 'Poison', 'Timid', 'Dusk Ball', 'Spell Tag', 48, 28, 17, 3, 'T004'),
('Draco', 149, 'Dragonite', 'Dragon Claw', 'Fly', 'Hyper Beam', 'Thunder Punch', 'Dragon', 'Flying', 'Mild', 'Master Ball', 'Choice Band', 55, 40, 12, 3, 'T001'),
('Jiggy', 39, 'Jigglypuff', 'Sing', 'Pound', 'Rollout', 'Hyper Voice', 'Fairy', 'Normal', 'Naive', 'Pokeball', NULL, 20, 10, 8, 2, 'T002'),
('Rattster', 19, 'Rattata', 'Quick Attack', 'Bite', 'Tackle', 'Tail Whip', 'Normal', NULL, 'Hardy', 'Pokeball', NULL, 18, 7, 10, 1, 'T004'),
('Zam', 65, 'Alakazam', 'Psychic', 'Teleport', 'Recover', 'Shadow Ball', 'Psychic', NULL, 'Modest', 'Great Ball', 'Focus Sash', 50, 30, 15, 5, 'T003'),
('Champion', 68, 'Machamp', 'Karate Chop', 'Submission', 'Dynamic Punch', 'Earthquake', 'Fighting', NULL, 'Adamant', 'Ultra Ball', 'Black Belt', 53, 25, 20, 8, 'T002'),
('Splashy', 129, 'Magikarp', 'Splash', 'Tackle', NULL, NULL, 'Water', NULL, 'Hasty', 'Pokeball', NULL, 10, 1, 9, 0, 'T004'),
('Hydra', 130, 'Gyarados', 'Dragon Rage', 'Hydro Pump', 'Ice Fang', 'Bite', 'Water', 'Flying', 'Serious', 'Ultra Ball', 'Wacan Berry', 40, 25, 10, 5, 'T001'),
('Rocky', 95, 'Onix', 'Rock Throw', 'Sandstorm', 'Slam', 'Dragon Breath', 'Rock', 'Ground', 'Impish', 'Heavy Ball', 'Hard Stone', 35, 15, 18, 2, 'T003'),
('Flame', 59, 'Arcanine', 'Flamethrower', 'Bite', 'Extreme Speed', 'Fire Fang', 'Fire', NULL, 'Jolly', 'Great Ball', 'Fire Stone', 42, 23, 16, 3, 'T002'),
('Laplace', 131, 'Lapras', 'Ice Beam', 'Surf', 'Confuse Ray', 'Body Slam', 'Water', 'Ice', 'Calm', 'Ultra Ball', 'Mystic Water', 45, 25, 15, 5, 'T001'),
('Copycat', 132, 'Ditto', 'Transform', NULL, NULL, NULL, 'Normal', NULL, 'Jolly', 'Luxury Ball', NULL, 20, 10, 8, 2, 'T004'),
('Scythe', 123, 'Scyther', 'Slash', 'Quick Attack', 'Wing Attack', 'Swords Dance', 'Bug', 'Flying', 'Adamant', 'Pokeball', 'Metal Coat', 33, 20, 10, 3, 'T003'),
('Buzz', 125, 'Electabuzz', 'Thunder Punch', 'Thunderbolt', 'Swift', 'Light Screen', 'Electric', NULL, 'Mild', 'Ultra Ball', 'Magnet', 38, 22, 14, 2, 'T002'),
('Freezy', 131, 'Lapras', 'Ice Beam', 'Hydro Pump', 'Thunderbolt', 'Surf', 'Water', 'Ice', 'Modest', 'Net Ball', 'Leftovers', 47, 30, 13, 4, 'T001'),
('Crusher', 76, 'Golem', 'Earthquake', 'Rock Throw', 'Explosion', 'Rollout', 'Rock', 'Ground', 'Hardy', 'Heavy Ball', 'Quick Claw', 42, 22, 16, 4, 'T004'),
('Kabuto', 141, 'Kabutops', 'Waterfall', 'Ancient Power', 'Slash', 'Rock Slide', 'Rock', 'Water', 'Brave', 'Ultra Ball', 'Quick Claw', 32, 17, 12, 3, 'T002'),
('Flutters', 12, 'Butterfree', 'Gust', 'Sleep Powder', 'Stun Spore', 'Psybeam', 'Bug', 'Flying', 'Timid', 'Net Ball', 'Silver Powder', 30, 20, 8, 2, 'T003'),
('Shellblast', 9, 'Blastoise', 'Hydro Pump', 'Ice Beam', 'Skull Bash', 'Protect', 'Water', NULL, 'Bold', 'Ultra Ball', 'Leftovers', 55, 35, 18, 2, 'T001'),
('Fluffy', 38, 'Ninetales', 'Flamethrower', 'Will-O-Wisp', 'Confuse Ray', 'Quick Attack', 'Fire', NULL, 'Timid', 'Great Ball', 'Charcoal', 40, 20, 17, 3, 'T002'),
('Petal', 3, 'Venusaur', 'Solar Beam', 'Sludge Bomb', 'Leech Seed', 'Earthquake', 'Grass', 'Poison', 'Quiet', 'Master Ball', 'Leftovers', 52, 30, 20, 2, 'T003'),
('Sparky', 26, 'Raichu', 'Thunderbolt', 'Quick Attack', 'Iron Tail', 'Volt Tackle', 'Electric', NULL, 'Jolly', 'Luxury Ball', 'Magnet', 45, 30, 10, 5, 'T001');

INSERT INTO Treinadores (Nome, ID_treinador, Idade, Pokemon1, Pokemon2, Pokemon3, Pokemon4, Pokemon5, Pokemon6, Insignias)
VALUES
('Ash Ketchum', 'T001', '10', 'Pikachu', 'Charizard', 'Bulbasaur', 'Squirtle', 'Snorlax', 'Tauros', '8'),
('Misty Waterflower', 'T002', '14', 'Starmie', 'Psyduck', 'Gyarados', NULL, NULL, NULL, '3'),
('Brock Harrison', 'T003', '16', 'Onix', 'Geodude', 'Vulpix', 'Zubat', NULL, NULL, '2'),
('Gary Oak', 'T004', '10', 'Blastoise', 'Arcanine', 'Nidoking', 'Electivire', 'Umbreon', 'Scizor', '10'),
('Lt. Surge', 'T005', '30', 'Raichu', 'Electabuzz', 'Magneton', 'Voltorb', 'Pikachu', NULL, '3'),
('Sabrina', 'T006', '21', 'Alakazam', 'Mr. Mime', 'Venomoth', NULL, NULL, NULL, '4'),
('Erika', 'T007', '18', 'Vileplume', 'Tangela', 'Bellossom', NULL, NULL, NULL, '4'),
('Koga', 'T008', '25', 'Crobat', 'Muk', 'Weezing', 'Venomoth', NULL, NULL, '5'),
('Blaine', 'T009', '50', 'Magmar', 'Rapidash', 'Arcanine', 'Ninetales', NULL, NULL, '7'),
('Giovanni', 'T010', '45', 'Nidoking', 'Nidoqueen', 'Rhydon', 'Kangaskhan', 'Dugtrio', 'Persian', '8');
