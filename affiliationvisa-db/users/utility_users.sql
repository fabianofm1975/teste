CREATE USER dpaaflvisauser WITH ENCRYPTED PASSWORD '#{POSTGRES_PASSWORD}#';

GRANT CONNECT ON DATABASE "AffiliationVisaDB" TO dpaaflvisauser;

GRANT pg_read_all_settings TO dpaaflvisauser;