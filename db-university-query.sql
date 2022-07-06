select *
from `departments`
where head_of_department = 'Bernardo Sanna';

select *
from `degrees`
where `level` = 'magistrale';

select *
from `courses`
where cfu >10;

select *
from `teachers`
where phone is null;

select *
from `students`
where TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;

select *
from `students`
where email like '%YAHOO%' or email like '%GMAIL%';

select *
from `exams`
WHERE YEAR(date) = 2020 AND MONTH(date) = 07;
