-- Removendo privil�gios herdados da role PUBLIC. 

-- Executar no BANCO POSTGRES logado com usu�rio POSTGRES

REVOKE ALL ON DATABASE POSTGRES FROM public;
REVOKE CREATE ON SCHEMA public FROM public; 

-- Executar no BANCO DA APLICA��O logado com usu�rio POSTGRES

REVOKE ALL ON SCHEMA public FROM public; 

GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;
GRANT ALL ON SCHEMA public TO migrationappuser;

GRANT CONNECT ON DATABASE "teste-db" TO appuser;
GRANT USAGE ON SCHEMA public TO appuser;


