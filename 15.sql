SELECT О.НАЗВ_ОТ, COUNT(Р.ГЛАВНЫЙ)
FROM ОТДЕЛЫ О, РАБОТЫ Р, СОТРУДНИКИ С
WHERE Р.ГЛАВНЫЙ = С.НОМЕР_СТ
AND С.ОТДЕЛ = О.НОМЕР_ОТ
GROUP BY О.НАЗВ_ОТ
