-- Executar com usuário admin da cloud

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@@2023!';
GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO migrationappuser;

-- Executar no banco AffiliationVisaDB

GRANT USAGE ON SCHEMA public TO migrationappuser;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO migrationappuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migrationappuser;
