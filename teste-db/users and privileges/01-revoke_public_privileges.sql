-- Removendo privil�gios herdados da role PUBLIC. 
-- Deve ser executado com usu�rio ADMIN da cloud ou POSTGRES, em TODOS OS BANCOS existentes e em TODO NOVO BANCO criado.

REVOKE ALL ON SCHEMA public FROM public;
