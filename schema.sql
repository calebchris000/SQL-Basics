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

CREATE TABLE owners(
    id SERIAL PRIMARY KEY,
    full_name varchar(255),
    age int
);

CREATE TABLE species(id SERIAL PRIMARY KEY, name varchar(255));

SELECT
    id
FROM
    animals;

ALTER TABLE
    animals DROP COLUMN species;

ALTER TABLE
    animals
ADD
    COLUMN species_id int REFERENCES species(id);

ALTER TABLE
    animals
ADD
    COLUMN owner_id int REFERENCES owners(id);

--* Project 4
CREATE TABLE vets(
    id SERIAL PRIMARY KEY,
    name varchar(255),
    age INTEGER,
    date_of_graduation DATE
);

CREATE TABLE specializations(
    species_id int,
    vet_id int,
    PRIMARY KEY(species_id, vet_id),
    FOREIGN KEY(species_id) REFERENCES species(id),
    FOREIGN KEY(vet_id) REFERENCES vets(id)
);

CREATE TABLE visits(
    animal_id int,
    vet_id int,
    PRIMARY KEY(animal_id, vet_id),
    FOREIGN KEY(animal_id) REFERENCES animals(id),
    FOREIGN KEY(vet_id) REFERENCES vets(id)
);