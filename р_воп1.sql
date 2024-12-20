use mydb;
select students.ful_name
from students
join grades on grades.studentes_id = students.id
join diary on diary.id = grades.diary_id
join subjects on diary.subjects_id = subjects.id
where subjects.name = 'матиматический аналез'