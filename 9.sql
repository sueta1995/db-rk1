SELECT С.ФИО
FROM СОТРУДНИКИ С
WHERE С.РУКОВОД IN (
	SELECT Р.ГЛАВНЫЙ
	FROM РАБОТЫ Р
)
