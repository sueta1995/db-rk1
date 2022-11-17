SELECT с."ФИО"
FROM СОТРУДНИКИ с
WHERE с."НОМЕР_СТ" IN
\t(SELECT НАЧАЛЬНИК
