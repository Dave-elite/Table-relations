--Creating tables for student 
CREATE TABLE Students(
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    gender VARCHAR(6),
    dob VARCHAR(8)

);
--Creating tables for student profile
CREATE TABLE StudentProfile(
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    admin_no INTEGER,
    class_name VARCHAR(100),
    student_id INTEGER UNIQUE,
    
    --one to one relationship every student has a his own profile 
     FOREIGN KEY (student_id) REFERENCES Students(student_id)

);
CREATE TABLE Guardian(
    guardian_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    relationship VARCHAR(15),
    student_id INTEGER,

    --one to many relationship 
    FOREIGN KEY(student_id) REFERENCES Students(student_id)

);
CREATE TABLE Units(
    unit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    unit_name VARCHAR(50),
    unit_code VARCHAR(50)
);
---Join tables btw students and their units
-- Many to many relationship

CREATE TABLE StudentUnits(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    unit_id INTEGER,

    --Many to many relationship for students and units since students have many units and the units are done by many students
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (unit_id) REFERENCES Units(unit_id)
);