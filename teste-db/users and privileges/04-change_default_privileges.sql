-- Alterando default privileges para o usu�rio appuser
-- Executar no BANCO DA APLICA��O logado com usu�rio MIGRATIONAPPUSER

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE ON SEQUENCES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO appuser;

-- Alterando default privileges para o usuario admin da cloud e/ou postgres ( dependendo do ambiente )
-- Executar no BANCO DA APLICA��O logado com usu�rio MIGRATIONAPPUSER

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE ON SEQUENCES TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO psqladmin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO psqladmin;