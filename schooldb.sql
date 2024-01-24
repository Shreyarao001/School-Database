
create database SchoolData;
use SchoolData;
-- subject Table
Create Table Subject
(
 subjectId int primary key Identity (1,1),
 subjectName varchar(50),
 TeacherName varchar(50)
)

INSERT INTO Subject
VALUES
 ( 'Mathematics','George'),
 ( 'Science','Radhika'),
 ( 'Telugu','Manisha'),
 ( 'English','Vishal'),
 ( 'Computer Science','Nikhil')
--Classes Table

Create Table Classes 
(
 ClassId int primary key Identity (1,1),
 ClassName varchar(50),
 ClassFloor int
)

INSERT INTO Classes 
VALUES
 ('Class 1',1),
('Class 2',1),
 ('Class 3',3),
 ('Class 4',3),
 ('Class 5',4),
 ('Class 6',4),
 ('Class 7',4)

--Student Table
create Table Students
(
 RollNo int primary key Identity (1,1),
 studentName varchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subject(subjectId) 
)

INSERT into Students
Values 
('shreya',3,1),
('srivatsav',1,4),
('riya',2,3),
('hasini',4,1),
('suhas',7,5),
('hasitha',5,3),
('siya',6,4),
('surya',7,2)

--printing Values
select * from Subject
select * from Classes
select * from Students