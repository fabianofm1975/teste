-- Removendo privil�gios herdados da role PUBLIC. 
-- Deve ser executado com usu�rio POSTGRES no NOVO BANCO criado e outros bancos que existam no ambiente.

REVOKE ALL ON SCHEMA public FROM public; 
REVOKE ALL ON DATABASE POSTGRES FROM public;

-- Executar no BANCO DA APLICA��O logado com usu�rio POSTGRES

GRANT ALL ON SCHEMA public TO postgres;

