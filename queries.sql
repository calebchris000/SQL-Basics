/*Queries that provide answers to the questions from all projects.*/

SELECT name FROM animals WHERE name LIKE '%mon';
SELECT date_of_birth FROM animals WHERE EXTRACT(YEAR FROM date_of_birth) BETWEEN 2016 AND 2019;
SELECT neutered, escape_attempts FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT weight_kg, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT neutered FROM animals WHERE neutered = TRUE;
SELECT name FROM animals WHERE NOT (name = 'Gabumon');
SELECT weight_kg FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;