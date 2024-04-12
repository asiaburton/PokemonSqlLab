Part 2: Simple Selects and Counts
#What are all the types of pokemon that a pokemon can have?
SELECT NAME
FROM Pokemons;

#What is the name of the pokemon with id 45?
SELECT *
FROM Pokemons
WHERE ID LIKE 45;

#How many pokemon are there?
SELECT COUNT(*)
FROM Pokemons;

#How many types are there?
SELECT COUNT (*)
FROM Types;

#How many pokemon have a secondary type?
SELECT COUNT(*)
FROM Pokemons
WHERE Secondary_type IS NOT NULL;


