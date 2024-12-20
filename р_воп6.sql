use mydb;
select students.ful_name
  from studentS
 where (select avg(grades.val) 
          from grades 
          join diary ON diary.id = grades.diary_id 
          join subjects on diary.subjects_id = subjects.id AND subjects.type_sub_id = 1
          WHERE grades.studentes_id = students.id AND grades.source_id = 2) > 4
    AND 
    (select avg(grades.val) 
          from grades 
          join diary ON diary.id = grades.diary_id 
          join subjects on diary.subjects_id = subjects.id AND subjects.type_sub_id = 2
          WHERE grades.studentes_id = students.id AND grades.source_id = 2) < 3 
