--insert Students 
INSERT INTO Students(name, gender, dob) VALUES
    ('Ahmed', 'Male', '25/12/2000'),
    ('Fatima', 'Female', '15/05/1998'),
    ('Maingi', 'Male', '14/02/1973'),
    ('Nadia', 'Female', '22/08/2002'),
    ('Sami', 'Male', '05/07/1997');

--insert Students profile
INSERT INTO StudentProfile(admin_no, class_name, student_id )VALUES
        (506, 'Titans', 1),
        (507, 'BigMinder', 2),
        (508, 'Titans', 3),
        (543, 'BigMinder', 4),
        (987, 'BigMinder', 5);


--insert guardian

INSERT INTO Guardian(name, relationship, student_id) VALUES
        ('Faisal', 'Father', 1),
        ('Abdul', 'Brother', 1),
        ('Elvis', 'Brother', 3),
        ('Mohammed', 'Father', 4),
        ('Gavin', 'Father', 2);

--insert the units
INSERT INTO Units (unit_name, unit_code)
VALUES  ('Software Development', 'MS98'),
        ('Android Development', 'MS56'),
        ('Cyber Security', 'MS12'),
        ('Data Science', 'MS45'),
        ('Web Design', 'MS55');

--insert into the studentUnits
INSERT INTO StudentUnits(student_id, unit_id)
VALUES  (1, 1),
        (1, 4),
        (1, 5),
        (4, 2),
        (4, 3),
        (3, 5),
        (3, 2),
        (3, 4),
        (2, 1),
        (2, 3),
        (2, 4);
