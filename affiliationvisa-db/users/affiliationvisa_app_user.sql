CREATE USER "AffiliationVisaAppUser" WITH ENCRYPTED PASSWORD 'Stone@@2023!';

GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO "AffiliationVisaAppUser";

GRANT USAGE ON SCHEMA public TO "AffiliationVisaAppUser";

GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO "AffiliationVisaAppUser";

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO "AffiliationVisaAppUser";

