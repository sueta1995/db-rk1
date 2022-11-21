SELECT Р.НАЗВАНИЕ 
FROM РАБОТЫ Р
WHERE Р.НОМЕР_РБ NOT IN (
	SELECT СП.РАБОТА
	FROM СПИСКИ_СТ СП
)
