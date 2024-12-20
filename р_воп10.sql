use mydb;
select subjects.name, st_group.name, AVG(grades.val)
  from st_group
  join studentS ON students.st_group_id = st_group.id
  join grades ON grades.studentes_id = students.id AND grades.source_id = 1
  join diary ON diary.id = grades.diary_id 
  join subjects ON subjects.id = diary.subjects_id
 GROUP BY subjects.name, st_group.name
 ORDER BY 1, 3 desc