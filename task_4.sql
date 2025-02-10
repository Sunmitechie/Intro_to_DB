USE alx_book_store;
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
AND TABLE_NAME = 'Books'
SELECT 
    COLUMN_NAME
    COLUMN_TYPE
