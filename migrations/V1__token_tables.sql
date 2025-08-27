-- PostgreSQL: hades-db
-- V1__token_tables

-- Tablas de Tokens
CREATE TABLE IF NOT EXISTS siigo_access_tokens (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    access_token TEXT UNIQUE NOT NULL,
    expires_in INT UNIQUE NOT NULL,
    expires_at TIMESTAMP WITH TIME ZONE NOT NULL,
    token_type VARCHAR(25) NOT NULL,
    scope VARCHAR(25) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);