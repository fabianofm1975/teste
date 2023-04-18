CREATE TABLE onboarding
(
    id uuid NOT NULL CONSTRAINT onboarding_pkey PRIMARY KEY,
    correlation_id uuid NOT NULL,
    invoice_id uuid NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE default NOW() NOT NULL,
    cart_data jsonb NOT NULL,
    data jsonb NOT NULL,
    document_number VARCHAR(14) NOT NULL,
    payment_link VARCHAR(100) NOT NULL,
    risk_analysis_key uuid NULL
);

CREATE index onboarding_id_index ON onboarding (id);
CREATE index onboarding_invoice_id_index ON onboarding (invoice_id);
CREATE index onboarding_cart_data_index ON onboarding USING gin (cart_data);
CREATE index onboarding_data_index ON onboarding USING gin (data);
CREATE index onboarding_risk_analysis_key_index ON onboarding (risk_analysis_key);
CREATE index onboarding_payment_link_index ON onboarding (payment_link);

CREATE TABLE onboarding_timeline
(
    id uuid NOT NULL CONSTRAINT onboarding_timeline_pkey PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE default NOW() NOT NULL,
    onboarding_id uuid NOT NULL CONSTRAINT onboarding_timeline_id_onboarding_fkey REFERENCES onboarding ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE index onboarding_timeline_id_index ON onboarding_timeline (id);
CREATE index onboarding_timeline_onboarding_id ON onboarding_timeline (onboarding_id);

CREATE TABLE bank_account
(
    id uuid NOT NULL CONSTRAINT bank_account_pkey PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE default NOW() NOT NULL,
    onboarding_id uuid NOT NULL CONSTRAINT bank_account_id_onboarding_fkey REFERENCES onboarding ON UPDATE CASCADE ON DELETE RESTRICT,
    data jsonb NOT NULL
);

CREATE index bank_account_id_index ON bank_account (id);
CREATE index bank_account_onboarding_id_index ON bank_account(onboarding_id);
CREATE index bank_account_data_index ON bank_account(data);