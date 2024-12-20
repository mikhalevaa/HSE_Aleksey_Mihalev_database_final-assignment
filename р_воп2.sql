use mydb;
select distinct subjects.name
from subjects
join diary on diary.subjects_id = subjects.id
join teachers on teachers.id = diary.teachers_id
where teachers.ful_name = 'Иванов Иван Иванович'