SELECT Р.НАЗВАНИЕ
FROM РАБОТЫ Р
WHERE (
	SELECT COUNT(СП.СОТР)
	FROM СПИСКИ_СТ СП
	WHERE СП.РАБОТА = Р.НОМЕР_РБ
) < 3
