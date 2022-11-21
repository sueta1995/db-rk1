SELECT COUNT(*)
FROM СОТРУДНИКИ С
WHERE (
	SELECT COUNT(*)
	FROM РАБОТЫ
) = (
	SELECT COUNT(СП.СОТР)
	FROM СПИСКИ_СТ СП
	WHERE С.НОМЕР_СТ = СП.СОТР
)
