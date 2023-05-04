/*Queries that provide answers to the questions from all projects.*/
SELECT
    name
FROM
    animals
WHERE
    name LIKE '%mon';

SELECT
    name
FROM
    animals
WHERE
    EXTRACT(
        YEAR
        FROM
            date_of_birth
    ) BETWEEN 2016
    AND 2019;

SELECT
    name
FROM
    animals
WHERE
    neutered = TRUE
    AND escape_attempts < 3;

SELECT
    date_of_birth
FROM
    animals
WHERE
    name = 'Agumon'
    OR name = 'Pikachu';

SELECT
    name,
    escape_attempts
FROM
    animals
WHERE
    weight_kg > 10.5;

SELECT
    name,
    neutered
FROM
    animals
WHERE
    neutered = TRUE;

SELECT
    name
FROM
    animals
WHERE
    NOT (name = 'Gabumon');

SELECT
    name,
    weight_kg
FROM
    animals
WHERE
    weight_kg >= 10.4
    AND weight_kg <= 17.3;

-- * Project 2
BEGIN;

UPDATE
    animals
SET
    species = 'unspecified';

SELECT
    name
FROM
    animals
WHERE
    species = 'unspecified';

ROLLBACK;

UPDATE
    animals
SET
    species = 'digimon'
WHERE
    name LIKE '%mon';

UPDATE
    animals
SET
    species = 'pokemon'
WHERE
    species IS NULL;

DELETE FROM
    animals;

ROLLBACK;

SELECT
    *
FROM
    animals;

END;

SELECT
    COUNT(name)
FROM
    animals;

SELECT
    COUNT(escape_attempts)
FROM
    animals
WHERE
    escape_attempts = 0;

SELECT
    AVG(weight_kg)
FROM
    animals;

SELECT
    name,
    MAX(escape_attempts) AS max
FROM
    animals
GROUP BY
    name;

SELECT
    species,
    MIN(weight_kg) as min_weight,
    MAX(weight_kg) as max_weight
FROM
    animals
GROUP BY
    species;

SELECT
    species,
    AVG(escape_attempts)
FROM
    animals
WHERE
    EXTRACT(
        YEAR
        FROM
            date_of_birth
    ) BETWEEN 1990
    AND 2000
GROUP BY
    species;

-- * Project 3
SELECT
    animals.name,
    owners.full_name
FROM
    animals
    INNER JOIN owners ON animals.owner_id = owners.id
WHERE
    owners.full_name = 'Melody Pond';

SELECT
    animals.name,
    species.name
from
    animals
    INNER JOIN species ON species_id = species.id
WHERE
    species.name = 'Pokemon';

SELECT
    animals.name,
    owners.full_name
FROM
    animals FULL
    JOIN owners ON owner_id = owners.id;

SELECT
    COUNT(species_id)
FROM
    animals
    INNER JOIN species ON animals.species_id = species.id
GROUP BY
    species_id;

SELECT
    owners.full_name,
    animals.name
FROM
    owners,
    animals
    INNER JOIN species ON species.id = animals.species_id
WHERE
    owners.full_name = 'Jennifer Orwell'
    AND animals.name LIKE '%mon'
GROUP BY
    owners.full_name,
    animals.name;

SELECT
    owners.full_name,
    animals.name
FROM
    owners,
    animals
    INNER JOIN species ON species.id = animals.species_id
WHERE
    owners.full_name = 'Dean Winchester'
    AND animals.escape_attempts = 0
GROUP BY
    owners.full_name,
    animals.name;

SELECT
    owners.full_name,
    COUNT(*) as frequency
FROM
    owners
    INNER JOIN animals ON owners.id = animals.owner_id
GROUP BY
    owners.full_name
ORDER BY
    frequency DESC
LIMIT
    1;

-- * Project 4
SELECT
    animals.name,
    vets.name,
    visited
FROM
    animals,
    visits,
    vets
WHERE
    animals.id = visits.animal_id
    AND vets.id = visits.vet_id
    AND vets.name = 'William Tatcher'
ORDER BY
    visited DESC
LIMIT
    1;

SELECT
    animals.name animals,
    vets.name vets,
    COUNT(animals)
FROM
    animals,
    visits,
    vets
WHERE
    animals.id = visits.animal_id
    AND vets.id = visits.vet_id
    AND vets.name = 'Stephanie Mendez'
GROUP BY
    animals.name,
    vets.name,
    visits.visited
ORDER BY
    visited DESC;

SELECT
    species.name spec_names,
    vets.name
FROM
    species,
    specializations FULL
    JOIN vets ON vets.id = specializations.vet_id;