-- SELECT * FROM Students WHERE gender = 'Male'
-- SELECT * FROM StudentProfile WHERE class_name = 'BigMinder'

-- We are starting with the inner join which is suitable for the one to one relationship 
-- between Students and StudentProfile tables

-- SELECT * FROM Students


-- SELECT * FROM Students JOIN StudentProfile ON Students.student_id = StudentProfile.student_id
-- SELECT Students.name, Students.gender, Students.dob, StudentProfile.admin_no, StudentProfile.class_name
--  FROM Students JOIN StudentProfile ON Students.student_id = StudentProfile.student_id
-----------SHORTER WAY--------
-- SELECT s.name, s.gender, s.dob, p.admin_no, p.class_name
--  FROM Students s JOIN StudentProfile p ON s.student_id = p.student_id

-------left join student, and unit via studentunit KNOWING ENROLLMENTS

-- SELECT * FROM Students
-- LEFT JOIN StudentUnits ON Students.student_id = StudentUnits.student_id
-- LEFT JOIN Units ON StudentUnits.unit_id = Units.unit_id

SELECT s.name, u.unit_name FROM Students s
LEFT JOIN StudentUnits su ON s.student_id = su.student_id
LEFT JOIN Units u ON su.unit_id = u.unit_id



--left join to get students, unit via the student unit