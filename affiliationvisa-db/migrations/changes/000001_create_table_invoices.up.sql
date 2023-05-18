CREATE TABLE public.invoice
(
    id              uuid            NOT NULL CONSTRAINT invoices_pkey PRIMARY KEY,
    type            VARCHAR(100)    NOT NULL
);
