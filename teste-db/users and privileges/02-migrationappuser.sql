-- Executar em qualquer banco com usu�rio POSTGRES

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;

-- Executar no BANCO DA APLICA��O logado com usu�rio POSTGRES

GRANT ALL ON SCHEMA public TO migrationappuser;

