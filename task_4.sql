-- A script that prints the full description of the table books from the
-- database alx_book_store in your MySQL server.

SELECT
	COLUMN_NAME AS 'Column',
	COLUMN_TYPE AS 'Type',
	COLUMN_KEY AS 'Key',
	COLUMN_DEFAULT AS 'Default',
	EXTRA AS 'Extra'
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_SCHEMA = 'alx_book_store'
	AND TABLE_NAME = 'books'
ORDER BY
	ORDINAL_POSITION;

