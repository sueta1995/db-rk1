SELECT р."НАЗВАНИЕ, AVG(с."ЗАРПЛАТА")
FROM СОТРУДНИКИ с, РАБОТЫ р, СПИСКИ_СТ сс
WHERE р."НОМЕР_РБ" = сс."РАБОТА"
AND сс."СОТР" = с."НОМЕР_СТ"
GROUP BY р."НАЗВАНИЕ"
