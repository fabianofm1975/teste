-- Criando o usu�rio de migration

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;

-- Executar no banco da aplica��o logado com usu�rio admin da cloud ou postgres

GRANT ALL ON SCHEMA public TO migrationappuser;

