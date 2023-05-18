-- Removendo privilégios herdados da role PUBLIC. 
-- Deve ser executado com usuário admin da cloud ou postgres, em todos os bancos existentes e em todo novo banco criado.

REVOKE ALL ON SCHEMA public FROM public;
