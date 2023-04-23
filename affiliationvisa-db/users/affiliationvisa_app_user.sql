CREATE USER "AffiliationVisaAppUser" WITH ENCRYPTED PASSWORD 'Stone@@2023!';
GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO "AffiliationVisaAppUser";

-- Alterando default privileges

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO "AffiliationVisaAppUser";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE ON SEQUENCES TO "AffiliationVisaAppUser";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO "AffiliationVisaAppUser";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO "AffiliationVisaAppUser";
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO "AffiliationVisaAppUser";
ALTER DEFAULT PRIVILEGES GRANT USAGE ON SCHEMAS TO "AffiliationVisaAppUser";