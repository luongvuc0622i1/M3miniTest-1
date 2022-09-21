USE Minitest1;

INSERT INTO Address (address_name) VALUES ('Hà Nội');
INSERT INTO Address (address_name) VALUES ('Bắc Ninh');
INSERT INTO Address (address_name) VALUES ('Quảng Ninh');
INSERT INTO Address (address_name) VALUES ('Hải Phòng');
INSERT INTO Address (address_name) VALUES ('Thái Bình');

INSERT INTO Classes (classes_name) VALUES ('C0622I1');
INSERT INTO Classes (classes_name) VALUES ('C0722G1');
INSERT INTO Classes (classes_name) VALUES ('C0522H1');
INSERT INTO Classes (classes_name) VALUES ('C0422I1');
INSERT INTO Classes (classes_name) VALUES ('C0122G1');

INSERT INTO Students (students_name, address_id, age, phone, classes_id) VALUES ('Vũ Hiền Lương', 2, 25, 0915814526, 1);
INSERT INTO Students (students_name, address_id, age, phone, classes_id) VALUES ('Nguyễn Duy Phong', 3, 23, 0915814527, 3);
INSERT INTO Students (students_name, address_id, age, phone, classes_id) VALUES ('Phùng Tú Linh', 1, 25, 0915814528, 2);
INSERT INTO Students (students_name, address_id, age, phone, classes_id) VALUES ('Nguyễn Duy Hùng', 1, 24, 0915814529, 1);
INSERT INTO Students (students_name, address_id, age, phone, classes_id) VALUES ('Đức Minh Huy', 5, 23, 0915814510, 3);
INSERT INTO Students (students_name, address_id, age, phone, classes_id) VALUES ('Phạm Hồng Quân', 4, 26, 0915814521, 1);
INSERT INTO Students (address_id, age, phone, classes_id) VALUES (3, 23, 0915814522, 2);
INSERT INTO Students (address_id, age, phone, classes_id) VALUES (1, 25, 0915814523, 4);
INSERT INTO Students (address_id, age, phone, classes_id) VALUES (1, 24, 0915814524, 1);
INSERT INTO Students (address_id, age, phone, classes_id) VALUES (5, 23, 0915814525, 3);

INSERT INTO Course (course_id, course_name) VALUE (1, 'Course 1');
INSERT INTO Course (course_id, course_name) VALUE (2, 'Course 2');
INSERT INTO Course (course_id, course_name) VALUE (3, 'Course 3');

INSERT INTO Points (students_id, course_id, points) VALUES (1, 1, 88);
INSERT INTO Points (students_id, course_id, points) VALUES (1, 1, 89);
INSERT INTO Points (students_id, course_id, points) VALUES (1, 2, 75);
INSERT INTO Points (students_id, course_id, points) VALUES (2, 3, 90);
INSERT INTO Points (students_id, course_id, points) VALUES (1, 1, 88);
INSERT INTO Points (students_id, course_id, points) VALUES (3, 2, 91);
INSERT INTO Points (students_id, course_id, points) VALUES (2, 1, 69);
INSERT INTO Points (students_id, course_id, points) VALUES (4, 3, 67);
INSERT INTO Points (students_id, course_id, points) VALUES (5, 2, 75);
INSERT INTO Points (students_id, course_id, points) VALUES (6, 2, 76);
INSERT INTO Points (students_id, course_id, points) VALUES (5, 1, 94);
INSERT INTO Points (students_id, course_id, points) VALUES (3, 3, 88);
INSERT INTO Points (students_id, course_id, points) VALUES (7, 2, 94);
INSERT INTO Points (students_id, course_id, points) VALUES (7, 3, 90);
INSERT INTO Points (students_id, course_id, points) VALUES (9, 1, 89);