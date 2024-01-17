SELECT name, structure FROM TechnicalTest_SistematXTeam.samples WHERE experiment_date < '2022-01-01';

SELECT * FROM TechnicalTest_SistematXTeam.samples WHERE experiment_date < '2022-01-01';

SELECT name, structure FROM TechnicalTest_SistematXTeam.molecules INNER JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id WHERE experiment_date < '2022-01-01';

SELECT name, structure FROM TechnicalTest_SistematXTeam.molecules JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id WHERE experiment_date > '2022-01-01';

SELECT name, structure FROM TechnicalTest_SistematXTeam.molecules JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.sample_id WHERE experiment_date < '2022-01-01';