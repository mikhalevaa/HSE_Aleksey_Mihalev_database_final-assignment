use mydb;
select students.ful_name, diary.year_o_study, AVG(grades.val)
  from studentS
  join grades ON grades.studentes_id = students.id AND grades.source_id = 1
  join diary ON diary.id = grades.diary_id 
 GROUP BY students.ful_name, diary.year_o_study