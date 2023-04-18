CREATE USER migrationappuser WITH ENCRYPTED PASSWORD '#{POSTGRES_PASSWORD}#';

GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO migrationappuser;

GRANT USAGE ON SCHEMA public TO migrationappuser;

GRANT USAGE ON SCHEMA visa TO migrationappuser;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO migrationappuser;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA visa TO migrationappuser;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migrationappuser;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA visa TO migrationappuser;