
ALTER TABLE users ADD COLUMN IF NOT EXISTS name TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS phone_number TEXT;


UPDATE users
SET name = CONCAT(first_name, ' ', second_name)
WHERE name IS NULL;

UPDATE users
SET phone_number = number
WHERE phone_number IS NULL;


ALTER TABLE users ALTER COLUMN name SET NOT NULL;
ALTER TABLE users ALTER COLUMN phone_number SET NOT NULL;


ALTER TABLE users DROP COLUMN first_name;
ALTER TABLE users DROP COLUMN second_name;
ALTER TABLE users DROP COLUMN number;