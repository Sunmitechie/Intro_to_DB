USE alx_book_store;
FROM information_schema.COLUMNS
WHERE SCHEMA TABLE_NAME = 'alx_book_store'
AND TABLE_NAME = 'Books'
SELECT 
    COLUMN_NAME
    COLUMN_TYPE
