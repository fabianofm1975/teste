-- Executar em qualquer banco com usu�rio ADMIN da cloud ou POSTGRES

CREATE USER appuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO appuser;

-- Executar no BANCO DA APLICA��O logado com usu�rio ADMIN da cloud ou POSTGRES

GRANT USAGE ON SCHEMA public TO appuser;


