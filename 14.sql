SELECT С.ФИО
FROM СОТРУДНИКИ С
WHERE С.НОМЕР_СТ NOT IN (
	SELECT СС.СОТР
	FROM СПИСКИ_СТ СС
)
