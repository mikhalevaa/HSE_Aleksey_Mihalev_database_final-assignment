use mydb;
select students.ful_name, subjects.name, avg(grades.val)
from students
join grades on students.id = grades.studentes_id
join diary on diary.id = grades.diary_id
join subjects on diary.subjects_id = subjects.id
where grades.source_id = 2
and students.ful_name = 'Грин Марк Евгеньевич'
group by students.ful_name, subjects.name