# 4350Lab1
Questions to be answered in SQL Lab 

Given the following relation schemes:
Teacher = [CourseN, Quarter,TeacherName]
Course = [CourseN,CourseName, Nunit)
LocationNTime = [CourseN, Quarter , DayTime, RoomN]/ Examples of DayTime:
M2:00AM,
W4:50PM, and T8:00PM. Note that DayTime is represented as a string.
Student = [studentName, CourseN, Quarter]
Express the following queries by SQL statements and test them using any appropriate
database product. Submit screenshot s of your SQL statements and their outputs. Create
your own table to test your SQL statements.
1. List the name of every teacher (distinct names) who teaches in RoomN ‘34’ in
Winter2011
2. List CourseN, CourseName, and TeacherName of every course meets on Monday
PM.
3. List the name of every teacher who taught at least one course in RroomN ‘723.’
4. List the CourseN, Quarter, RoomN and DayTime of every course taught by ‘Karen
Reed’ in the Spring 2005.
5. List the CourseN and TeacherName of every course taken by the student ‘Ron Smith’
or by the student ‘David Weidman.’
6. List the CourseN and Quarter of every course taught by ‘Karen Reed’ and met or
meets in RoomN ‘713’.
7. List the name of every teacher who has taught the same course at least two times.
8. List the name of every teacher( distinct names) who has taught at least two different
courses in the same or different quarters.
9. List the CourseN, CourseName, and Quarter which meets or met at least two times a
week.
10. List the CourseN and CourseName of every course with number of units > 4.
11. List every course number and student’s name who has taken the course at least twice.
12. Use ‘*’ to list the CourseN, CourseName, Nunit, Quarter, TeacherName of every
course sorted by CourseN ascending, CourseName descending.
13. List the CourseN and Quarter of every course taught by two different instructors in
the same quarter ordered by the CourseN in descending order.
