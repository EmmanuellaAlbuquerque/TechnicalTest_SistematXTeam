
-- MySQL 

-- Schema de testes
CREATE SCHEMA TechnicalTest_SistematXTeam;

-- Tabela de Moléculas
CREATE TABLE TechnicalTest_SistematXTeam.molecules (
    molecule_id INT PRIMARY KEY,
    name VARCHAR(255),
    structure VARCHAR(1000)
);

-- Tabela de Amostras
CREATE TABLE TechnicalTest_SistematXTeam.samples (
    sample_id INT PRIMARY KEY,
    molecule_id INT,
    experiment_date DATE,
    FOREIGN KEY (molecule_id) REFERENCES molecules(molecule_id)
);

-- Inserção de dados na tabela molecules
INSERT INTO TechnicalTest_SistematXTeam.molecules (molecule_id, name, structure) VALUES
(1, 'Aspirin', 'C9H8O4'),
(2, 'Caffeine', 'C8H10N4O2'),
(3, 'Paracetamol', 'C8H9NO2');

-- Inserção de dados na tabela samples
INSERT INTO TechnicalTest_SistematXTeam.samples (sample_id, molecule_id, experiment_date) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2023-12-15'),
(3, 3, '2021-12-16'),
(4, 1, '2024-01-05'),
(5, 2, '2023-09-27'),
(6, 1, '2022-10-10');
