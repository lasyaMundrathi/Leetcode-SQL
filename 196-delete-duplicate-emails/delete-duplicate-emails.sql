DELETE FROM PERSON
Where id in (select id from(
SELECT id, 
	email, 
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) rn  
FROM PERSON ) c where c.rn > 1)