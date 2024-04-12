Part 3: Joins and Groups

#What is each pokemon's primary type?
SELECT Pokemons.name AS Pokemon, pokemons.primary_type, Types.name
FROM Pokemons
LEFT JOIN Types
ON Pokemons.primary_type=Types.id;


#What is Rufflet's secondary type?
SELECT Name AS pokemon, Secondary_type
FROM Pokemons
WHERE Name LIKE 'Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT name AS Pokemons_Assigned_to_Trainer303
FROM Pokemons
RIGHT JOIN Pokemon_trainer
ON Pokemons.id = pokemon_trainer.pokemon_id
WHERE TrainerID = 303;

#How many pokemon have a secondary type Poison
SELECT COUNT(*)
FROM Pokemons
WHERE Secondary_type = 'Poison';

#What are all the primary types and how many pokemon have that type?
SELECT DISTINCT Pokemons.primary_type, Types.name
FROM Pokemons
LEFT JOIN Types
ON Pokemons.primary_type=types.id
GROUP BY Primary_type
ORDER BY Primary_type desc;

#What are all the primary types and how many pokemon have that type?
SELECT DISTINCT pokemons.primary_type, types.name, count(pokemons.name) AS num_pokemons
FROM pokemons
LEFT JOIN types
ON pokemons.primary_types=types.id
GROUP BY primary_type
ORDER BY COUNT(pokemons.name) DESC;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT trainerID, COUNT(pokemon_id) AS num_pokemons, pokelevel
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID
ORDER BY COUNT(pokemon_id) DESC;

#How many pokemon only belong to one trainer and no other?
SELECT COUNT(pokemon_id) AS num_pokemons_with_one_trainer
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT(pokemon_id) = 1;
