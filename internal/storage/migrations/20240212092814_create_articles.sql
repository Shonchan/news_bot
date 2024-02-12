-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS articles (
    id SERIAL PRIMARY KEY,
    source_id INTEGER NOT NULL,
    title VARCHAR(255) NOT NULL,
    link VARCHAR(255) NOT NULL,
    summary TEXT NOT NULL,
    published_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    posted_at TIMESTAMP 
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
