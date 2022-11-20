select с.ФИО
from СОТРУДНИКИ с
where с.НОМЕР_СТ in (
	select р.ГЛАВНЫЙ
	from РАБОТЫ р
)
and с.НОМЕР_СТ in (
	select о.НАЧАЛЬНИК
	from ОТДЕЛЫ о
)
