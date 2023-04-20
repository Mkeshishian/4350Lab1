DROP DATABASE IF EXISTS university_db;

-- Create the database
CREATE DATABASE university_db;

-- Use the database
USE university_db;

CREATE TABLE Teacher (
  CourseN INT,
  Quarter VARCHAR(20),
  TeacherName VARCHAR(50),
  PRIMARY KEY (CourseN, Quarter)
);

INSERT INTO Teacher (CourseN, Quarter, TeacherName)
VALUES (101, 'Winter2011', 'John Doe'),
       (102, 'Spring2005', 'Karen Reed'),
       (101, 'Fall2008', 'John Doe'),
       (104, 'Winter2011', 'Alice Lee'),
       (105, 'Fall2008', 'John Doe'),
       (106, 'Winter2011', 'Ron Smith');

CREATE TABLE Course (
  CourseN INT,
  CourseName VARCHAR(50),
  Nunit INT,
  PRIMARY KEY (CourseN)
);

INSERT INTO Course (CourseN, CourseName, Nunit)
VALUES (101, 'Introduction to Computer Science', 3),
       (102, 'Calculus I', 5),
       (103, 'Shakespearean Literature', 3),
       (104, 'American History', 4),
       (105, 'Introductory Biology', 3),
       (106, 'Art History', 4);

CREATE TABLE LocationNTime (
  CourseN INT,
  Quarter VARCHAR(20),
  DayTime VARCHAR(20),
  RoomN VARCHAR(10),
  PRIMARY KEY (CourseN, Quarter, DayTime, RoomN),
  FOREIGN KEY (CourseN, Quarter) REFERENCES Teacher (CourseN, Quarter)
);

INSERT INTO LocationNTime (CourseN, Quarter, DayTime, RoomN)
VALUES (101, 'Winter2011', 'M2:00PM', '34'),
		(101, 'Winter2011', 'T2:00PM', '34'),
       (102, 'Spring2005', 'M8:00PM', '713'),
       (101, 'Fall2008', 'T4:50PM', '22'),
       (104, 'Winter2011', 'F1:00PM', '34'),
       (105, 'Fall2008', 'M10:00AM', '12'),
       (106, 'Winter2011', 'W9:00AM', '723');

CREATE TABLE Student (
  StudentName VARCHAR(50),
  CourseN INT,
  Quarter VARCHAR(20),
  PRIMARY KEY (StudentName, CourseN, Quarter),
  FOREIGN KEY (CourseN, Quarter) REFERENCES Teacher (CourseN, Quarter)
);

INSERT INTO Student (StudentName, CourseN, Quarter)
VALUES ('John Smith', 101, 'Winter2011'),
       ('Karen Reed', 102, 'Spring2005'),
       ('John Smith', 101, 'Fall2008'),
       ('Alice Lee', 104, 'Winter2011'),
       ('David Weidman', 105, 'Fall2008'),
       ('Ron Smith', 106, 'Winter2011');
