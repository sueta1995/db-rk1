SELECT (
	SELECT ОО.НАЗВ_ОТ
	FROM ОТДЕЛЫ ОО
	WHERE ОО.НОМЕР_ОТ = С.ОТДЕЛ
), COUNT(С.НОМЕР_СТ) AS КОЛИЧЕСТВО 
FROM СОТРУДНИКИ С
WHERE С.НОМЕР_СТ IN (
	SELECT Р.ГЛАВНЫЙ
	FROM РАБОТЫ Р
)
GROUP BY С.ОТДЕЛ
ORDER BY 1
