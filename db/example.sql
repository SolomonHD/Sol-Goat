SELECT *
FROM authors, surveys
WHERE authors.id = surveys.author_id
ORDER BY authors_id;
