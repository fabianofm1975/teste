-- Executar com usuário admin da cloud no banco POSTGRES

-- Removendo privilégios herdados da role PUBLIC

REVOKE ALL ON SCHEMA public FROM public;

-- Criando o usuário de migration

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@@2023!';
GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO migrationappuser;

-- Executar no banco AffiliationVisaDB logado com usuário admin da cloud

GRANT ALL ON SCHEMA public TO migrationappuser;

