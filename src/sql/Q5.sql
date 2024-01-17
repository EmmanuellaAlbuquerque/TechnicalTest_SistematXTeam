SELECT name, COUNT(DISTINCT sample_id) as sample_count FROM TechnicalTest_SistematXTeam.molecules LEFT JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id;

SELECT name, COUNT(*) as sample_count FROM TechnicalTest_SistematXTeam.molecules JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id GROUP BY structure;

SELECT name, COUNT(DISTINCT sample_id) as sample_count FROM TechnicalTest_SistematXTeam.molecules LEFT JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id GROUP BY name;

SELECT name, COUNT(DISTINCT molecule_id) as sample_count FROM TechnicalTest_SistematXTeam.molecules LEFT JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id GROUP BY name;

SELECT name, COUNT(DISTINCT molecule_id) as molecule_id FROM TechnicalTest_SistematXTeam.molecules JOIN TechnicalTest_SistematXTeam.samples ON molecules.molecule_id = samples.molecule_id GROUP BY structure;