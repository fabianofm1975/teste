CREATE TABLE IF NOT EXISTS teste
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