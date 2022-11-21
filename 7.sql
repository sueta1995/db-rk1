SELECT С.ФИО
FROM СОТРУДНИКИ С
WHERE С.РУКОВОД IN (
	SELECT О.НАЧАЛЬНИК
	FROM ОТДЕЛЫ О
)
