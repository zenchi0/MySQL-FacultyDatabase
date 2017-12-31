use sdev;

create table Faculty (
FacultyID INT NOT NULL AUTO_INCREMENT UNIQUE,
FirstName VARCHAR(30),
LastName VARCHAR(50),
Email VARCHAR(50),
DOB DATE,
NumCoursesTaught INT(5),
CONSTRAINT PH_FacID PRIMARY KEY (FacultyID));

create table Courses (
CourseID INT NOT NULL PRIMARY KEY,
DisciplineName CHAR(4) NOT NULL,
CourseNumber INT(3) NOT NULL,
Credits INT(1) NOT NULL,
YearFIrstOffered YEAR(4) NOT NULL,
CourseTitle VARCHAR(50) NOT NULL
);

create table FacultyCourses (
FacultyCourseID INT PRIMARY KEY,
FacultyID INT REFERENCES Faculty(FacultyID),
CourseID INT REFERENCES Courses(CourseID)
);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Stan', 'Smith', 'stan.smith@faculty.university.edu', '1965-11-20', 3);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('George', 'Takei', 'iamsulu@ussenterprise.federation.edu', '1937-04-20', 6);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('James', 'Kirk', 'james.t.kirk@captainschar.com', '2233-02-22', 3);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Charles', 'Xavier', 'professorX@Xmen.org', '1935-11-13', 3);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Peter', 'Griffen', 'presidentpeter@hehehe.petoria', '1955-07-22', 3);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Stan', 'Lee', 'excelsior@marvel.edu', '1922-12-28', 3);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Stephen', 'King', 'masterofhorror@thriller.edu', '1947-09-21', 2);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Roger', 'Waters', 'pinkman@darkside.moon', '1943-09-03', 2);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Obi-wan', 'Kenobi', 'jedimaster@jedi.academy.lightside', '1914-04-05', 10);

insert into Faculty (FirstName, LastName, Email, DOB, NumCoursesTaught)
values ('Bill', 'Nye', 'scienceguy@faculty.cornell.edu', '1955-11-27', 1);

insert into Courses
values (1, 'BIOL', 200, 1955, 'Cellular Biology');

insert into Courses
values (2, 'PHYS', 100, 1950, 'Basic Physics');

insert into Courses
values (3, 'CHEM', 320, 1970, 'Advanced Organic Chemistry');

insert into Courses
values (4, 'PSYC', 210, 1970, 'Intermediate Psychology');

insert into Courses
values (5, 'MATH', 330, 1965, 'Advanced Trigonometry');

insert into FacultyCourses
values (1, 2, 5);

insert into FacultyCourses
values (2, 3, 3);

insert into FacultyCourses
values (3, 3, 3);

insert into FacultyCourses
values (4, 10, 5);

insert into FacultyCourses
values (5, 8, 3);

insert into FacultyCourses
values (6, 7, 2);

insert into FacultyCourses
values (7, 5, 5);

insert into FacultyCourses
values (8, 6, 1);

insert into FacultyCourses
values (9, 4, 2);

insert into FacultyCourses
values (10, 1, 4);

insert into FacultyCourses
values (11, 3, 3);

insert into FacultyCourses
values (12, 9, 5);

insert into FacultyCourses
values (13, 8, 2);

insert into FacultyCourses
values (14, 7, 3);

insert into FacultyCourses
values (15, 6, 1);

insert into FacultyCourses
values (16, 5, 2);

insert into FacultyCourses
values (17, 4, 5);

insert into FacultyCourses
values (18, 2, 1);

insert into FacultyCourses
values (19, 1, 3);

insert into FacultyCourses
values (20, 1, 1);

insert into FacultyCourses
values (21, 2, 4);

insert into FacultyCourses
values (22, 3, 5);

insert into FacultyCourses
values (23, 4, 3);

insert into FacultyCourses
values (24, 5, 5);

insert into FacultyCourses
values (25, 6, 4);

update Courses
set Credits=4;

update Faculty
set NumCoursesTaught=IF(NumCoursesTaught > 4, 5, NumCoursesTaught);

delete from Faculty
where LastName like 'Z%';

delete from Courses
where YearFIrstOffered=1999;

select * from Faculty
order by LastName;

select * from Courses
order by CourseTitle;

select * from FacultyCourses
order by FacultyID;

select Faculty.FirstName, Faculty.LastName from Faculty
left outer join FacultyCourses
on Faculty.FacultyID=FacultyCourses.FacultyID
where FacultyCourses.CourseID is null;

select * from Courses
where YearFIrstOffered < 1984
order by YearFIrstOffered;

select *
from Faculty f, Courses c, FacultyCourses s
where f.FacultyID=s.FacultyID and c.CourseID=s.CourseID;