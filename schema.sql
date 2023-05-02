/* Database schema to keep the structure of entire database. */
CREATE TABLE animals(
    id int PRIMARY KEY,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg numeric
);

-- * Project 2
ALTER TABLE
    animals
ADD
    species varchar(100);

