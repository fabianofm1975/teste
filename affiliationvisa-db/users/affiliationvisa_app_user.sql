CREATE USER "AffiliationVisaAppUser" WITH ENCRYPTED PASSWORD '#{PGSQL_APP_USER_PASSWORD}#';

GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO "AffiliationVisaAppUser";

GRANT USAGE ON SCHEMA public TO "AffiliationVisaAppUser";

GRANT USAGE ON SCHEMA visa TO "AffiliationVisaAppUser";

GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO "AffiliationVisaAppUser";

GRANT USAGE ON ALL SEQUENCES IN SCHEMA visa TO "AffiliationVisaAppUser";

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO "AffiliationVisaAppUser";

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA visa TO "AffiliationVisaAppUser";
