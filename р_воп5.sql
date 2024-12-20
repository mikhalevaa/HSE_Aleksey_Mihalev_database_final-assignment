use mydb;
select teachers.ful_name#, count(distinct diary.subjects_id)
from teachers
join diary on diary.teachers_id =  teachers.id
group by teachers.ful_name
having count(distinct diary.subjects_id) > 3
