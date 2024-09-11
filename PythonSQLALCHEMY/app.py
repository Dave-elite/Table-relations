from sqlalchemy import create_engine, Column, Integer, String, ForeignKey
from sqlalchemy.orm import declarative_base, sessionmaker, relationship

# Base class for creating models
Base = declarative_base()

class Student(Base):
    __tablename__ = 'students'  # name of the table in the database

    student_id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100))
    gender = Column(String(6))
    dob = Column(String(8))

    #####RELATIONSHIPS#############
    profile = relationship('StudentProfile', back_populates='student')


class StudentProfile(Base):
    __tablename__ = 'profile'  # name of the table in the database

    profile_id = Column(Integer, primary_key=True, autoincrement=True)
    admin_no = Column(Integer)
    class_name = Column(String(100))
    student_id = Column(Integer, ForeignKey('students.student_id'), unique=True)  # Correct ForeignKey

    #######Relationships#########
    student = relationship('Student', back_populates='profile')
    
    def __repr__(self):
        return f"Student(name={self.name}, student_id={self.student_id}, dob={self.dob})"


# Connect to the database using create_engine
engine = create_engine('sqlite:///school.db')

# Create the tables in the database
Base.metadata.create_all(engine)



####################interact with the database #################

Session = sessionmaker(bind=engine)
#create a variable to access the session/queris
sesh = Session()

#create a new student

# student1 = Student(name = 'Maingi', gender = 'Male', dob = '1998/06/29')
# student2 = Student(name = 'David', gender = 'Male', dob = '2000/10/06')
# student3 = Student(name = 'John', gender = 'Male', dob = '2001/09/18')


#Save the student

# sesh.add(student1)# for adding one student
# sesh.add_all([student1, student2, student3])
# sesh.commit()

#getting all students
all_student = sesh.query(Student).all()
print(all_student)

sesh.close()


# ###use auto close session
# with Session() as sesh:
#     all your work queries here

# Session = scoop_session(sessionmaker(bind=engine))