DELETE
FROM person
WHERE id NOT IN (
    SELECT sub.min_id
    FROM (
        SELECT email, MIN(id) AS min_id
        FROM person
        GROUP BY email
    ) sub
)
