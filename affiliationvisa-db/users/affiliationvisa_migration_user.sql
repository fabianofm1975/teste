-- Executar com usu�rio admin da cloud no banco POSTGRES

-- Removendo privil�gios herdados da role PUBLIC

REVOKE ALL ON SCHEMA public FROM public;

-- Criando o usu�rio de migration

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@@2023!';
GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO migrationappuser;

-- Executar no banco AffiliationVisaDB logado com usu�rio admin da cloud

GRANT ALL ON SCHEMA public TO migrationappuser;

