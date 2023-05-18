-- Removendo privil�gios herdados da role PUBLIC. 
-- Deve ser executado com usu�rio admin da cloud ou postgres, em todos os bancos existentes e em todo novo banco criado.

REVOKE ALL ON SCHEMA public FROM public;

-- Alterando default privileges para o usu�rio appuser
-- Executar no banco da aplica��o, logado com usu�rio migrationappuser

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON TABLES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE ON SEQUENCES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO appuser;

-- Alterando default privileges para o usuario admin da cloud e/ou postgres ( dependendo do ambiente )
-- Executar no banco da aplica��o, logado com usu�rio migrationappuser

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON TABLES TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE ON SEQUENCES TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO psqladmin;

