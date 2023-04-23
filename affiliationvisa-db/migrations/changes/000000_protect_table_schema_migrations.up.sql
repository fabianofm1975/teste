DO
$do$
BEGIN
   IF EXISTS (
      SELECT FROM pg_catalog.pg_roles WHERE  rolname = 'AffiliationVisaAppUser') 
   THEN
      REVOKE SELECT, INSERT, UPDATE, DELETE ON public.schema_migrations from "AffiliationVisaAppUser";
   END IF;
END
$do$;

