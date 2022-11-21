-- SELECT COUNT(СП.СОТР), Р.НОМЕР_РБ, Р.НАЗВАНИЕ
-- FROM СПИСКИ_СТ СП
-- JOIN РАБОТЫ Р ON Р.НОМЕР_РБ = СП.РАБОТА
-- GROUP BY Р.НОМЕР_РБ
-- HAVING COUNT(СП.СОТР) = (
-- 	SELECT COUNT(СОТР)
-- 	FROM СПИСКИ_СТ
-- 	GROUP BY РАБОТА
-- 	ORDER BY 1 DESC LIMIT 1
-- )

WITH RESULT AS (
	SELECT Р.НОМЕР_РБ, Р.НАЗВАНИЕ, COUNT(СП.СОТР)
	FROM СПИСКИ_СТ СП, СОТРУДНИКИ С, РАБОТЫ Р
	WHERE Р.НОМЕР_РБ = СП.РАБОТА
	AND СП.СОТР = С.НОМЕР_СТ
	GROUP BY Р.НОМЕР_РБ
)

SELECT R.НОМЕР_РБ, R.НАЗВАНИЕ, R.count
FROM RESULT R
WHERE R.count = (
	SELECT MAX(RR.count)
	FROM RESULT RR
)
