USE Minitest1;

-- Thống kê số lượng học viên các lớp (count)
SELECT Classes.classes_id, Classes.classes_name, COUNT(students_id) AS 'Số lượng học viên'
FROM Classes, Students
WHERE Students.classes_id = Classes.classes_id
GROUP BY classes_name;

-- Thống kê số lượng học viên tại các tỉnh (count)
SELECT Address.address_id, Address.address, COUNT(students_id) AS 'Số lượng học viên'
FROM Address, Students
WHERE Students.address_id = Address.address_id
GROUP BY address_id;

-- Tính điểm trung bình của các khóa học (avg)
SELECT C.course_Id, C.course_name, AVG(Point)
FROM Course C JOIN point P
ON C.Course_Id = P.Course_Id
GROUP BY C.Course_Id, C.Course_name;

-- Đưa ra khóa học có điểm trung bình cao nhất (max)
SELECT C.course_Id, C.course_name, AVG(Point)
FROM Course C JOIN point P
ON C.Course_Id = P.Course_Id
GROUP BY C.Course_Id, C.Course_name
HAVING AVG(point) >= ALL(SELECT AVG(point) FROM point GROUP BY point.course_id );