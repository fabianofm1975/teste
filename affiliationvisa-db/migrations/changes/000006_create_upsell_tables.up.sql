CREATE TABLE public.invoice
(
    id              uuid            NOT NULL CONSTRAINT invoices_pkey PRIMARY KEY,
    type            VARCHAR(100)    NOT NULL
);

CREATE TABLE public.upsell
(
    id              uuid            NOT NULL CONSTRAINT upsell_pkey PRIMARY KEY,
    correlation_id  uuid            NOT NULL,
    invoice_id      uuid            NOT NULL CONSTRAINT upsell_invoice_id_invoice_fkey REFERENCES invoice ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at      TIMESTAMP WITH TIME ZONE default NOW() NOT NULL,
    data            jsonb           NOT NULL,
    cart_data       jsonb           NOT NULL,
    document_number VARCHAR(14)     NOT NULL,
    payment_link    VARCHAR(100)    NULL
);

CREATE index upsell_correlation_id_index ON upsell (correlation_id);
CREATE index upsell_invoice_id_index ON upsell (invoice_id);
CREATE index upsell_document_number_index ON upsell (document_number);
CREATE index upsell_data_index ON upsell USING gin (data);
CREATE index upsell_cart_data_index ON upsell USING gin (cart_data);

CREATE TABLE public.upsell_timeline
(
    id uuid NOT NULL CONSTRAINT upsell_timeline_pkey PRIMARY KEY,
    upsell_id uuid NOT NULL CONSTRAINT upsell_timeline_id_upsell_fkey REFERENCES upsell ON UPDATE CASCADE ON DELETE RESTRICT,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE default NOW() NOT NULL
);

CREATE index upsell_timeline_upsell_id ON upsell_timeline (upsell_id);
