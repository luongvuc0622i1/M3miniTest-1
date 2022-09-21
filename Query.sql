USE Minitest1;

select * from Students where students_name like 'Nguyễn%';

SELECT * FROM Students WHERE students_name LIKE '%o%';

SELECT * FROM Students WHERE age >= 24;

SELECT * FROM Students WHERE students_id = 1 OR students_id = 4;