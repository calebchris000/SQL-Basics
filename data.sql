/* Populate database with sample data. */
INSERT INTO
    animals (name)
VALUES
    ('Luna');

INSERT INTO
    animals (name)
VALUES
    ('Daisy');

INSERT INTO
    animals (name)
VALUES
    ('Charlie');

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Agumon', '2020-02-03', 0, TRUE, 10.23)
INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Gabumon', '2018-11-15', 2, TRUE, 8);

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Pikachu', '2021-01-07', 1, FALSE, 15.04);

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Pikachu', '2017-05-12', 1, FALSE, 15.04);

-- * Project 2
INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Charmander', '2020-02-08', 0, FALSE, -11);

INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Plantmon', '2021-11-15', 2, TRUE, -5.7);

INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Squirtle', '1993-04-02', 3, FALSE, -12.13);

INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Angemon', '2005-06-12', 1, TRUE, -45);

INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Boarmon', '2005-06-07', 7, TRUE, 20.4);

INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Blossom', '1998-10-13', 3, TRUE, 17);

INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Ditto', '2022-05-14', 4, TRUE, 22.0);

-- * Project 3
INSERT INTO
    owners(full_name, age)
VALUES
    ('Sam Smith', 34);

INSERT INTO
    owners(full_name, age)
VALUES
    ('Jennifer Orwell', 19);

INSERT INTO
    owners(full_name, age)
VALUES
    ('Bob', 45);

INSERT INTO
    owners(full_name, age)
VALUES
    ('Melody Pond', 77);

INSERT INTO
    owners(full_name, age)
VALUES
    ('Dean Winchester', 14);

INSERT INTO
    owners(full_name, age)
VALUES
    ('Jodie Whittaker', 38);

INSERT INTO
    species(name)
VALUES
    ('Pokemon'),
    ('Digimon');

UPDATE
    animals
SET
    species_id = species.id
FROM
    species
WHERE
    animals.name LIKE '%mon'
    AND species.name = 'Digimon';

UPDATE
    animals
SET
    species_id = species.id
FROM
    species
WHERE
    NOT animals.name LIKE '%mon'
    AND species.name = 'Pokemon';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    (
        animals.name = 'Pikachu'
        OR animals.name = 'Gabumon'
    )
    AND owners.full_name = 'Jennifer Orwell';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    (
        animals.name = 'Devimon'
        OR animals.name = 'Plantmon'
    )
    AND owners.full_name = 'Bob';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    (
        animals.name = 'Charmander'
        OR animals.name = 'Squirtle'
        OR animals.name = 'Blossom'
    )
    AND owners.full_name = 'Melody Pond';

UPDATE
    animals
SET
    owner_id = owners.id
FROM
    owners
WHERE
    (
        animals.name = 'Angemon'
        OR animals.name = 'Boarmon'
    )
    AND owners.full_name = 'Dean Winchester';