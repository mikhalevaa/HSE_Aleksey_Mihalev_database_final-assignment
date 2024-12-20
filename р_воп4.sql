use mydb;
select teachers.ful_name, avg(grades.val)
from teachers
join diary on diary.teachers_id =  teachers.id
join grades on diary.id = grades.diary_id
where grades.source_id = 1
#and students.ful_name = 'Грин Марк Евгеньевич'
group by teachers.ful_name
ORDER BY 2 desc