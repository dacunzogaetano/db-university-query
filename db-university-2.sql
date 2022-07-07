-- Contare quanti iscritti ci sono stati ogni anno (la data di iscrizione sulla tabella students è enrolment_date)
SELECT count(id) as id, enrolment_date
FROM students s 
group by year(enrolment_date) 
order by s.enrolment_date ;

-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
select *
from students s
 inner join degrees d 
 on s.degree_id =d.id 
where d.id  = '53';

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
select c.id, c.name , t.name, t.surname, t.email  
from courses c 
inner join teachers t
on t.name like 'fulvio' and t.surname like 'amato';

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui 
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

select s.id, s.name, s.surname, s.fiscal_code, d.name, dep.*
from students s 
left outer join `degrees` d
on s.degree_id = d.id
left outer join departments dep
on d.department_id = dep.id
order by s.surname, s.name ;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi

select count(dep.id)  id, d.name 
from `degrees` d 
inner join departments dep
on d.department_id  = dep.id
group by dep.id;

