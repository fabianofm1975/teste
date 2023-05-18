-- Executar com usuário admin da cloud ou postgres

CREATE USER appuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO appuser;

-- Executar no banco da aplicação logado com usuário admin da cloud ou postgres

GRANT USAGE ON SCHEMA public TO appuser;


