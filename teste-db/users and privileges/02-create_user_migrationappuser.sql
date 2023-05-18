-- Criando o usuário de migration

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;

-- Executar no banco da aplicação logado com usuário admin da cloud ou postgres

GRANT ALL ON SCHEMA public TO migrationappuser;

