-- Removendo privil�gios herdados da role PUBLIC. Deve ser executado, com usu�rio admin da cloud ou postgres
-- em todos os bancos existentes e em todo novo banco criado.

REVOKE ALL ON SCHEMA public FROM public;

-- Criando o usu�rio de migration

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;

-- Executar no banco "teste-db" logado com usu�rio admin da cloud ou postgres

REVOKE ALL ON SCHEMA public FROM public;
GRANT ALL ON SCHEMA public TO migrationappuser;

