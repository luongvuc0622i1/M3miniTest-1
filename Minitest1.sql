create DATABASE Minitest1;

USE Minitest1;

CREATE TABLE Address(
    address_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address_name VARCHAR(50)
);

CREATE TABLE Classes(
    classes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    classes_name VARCHAR(50),
    classes_language VARCHAR(50),
    classes_description VARCHAR(50)
);

CREATE TABLE Students(
    students_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    students_name VARCHAR(50),
    address_id INT NOT NULL,
    age INT,
    phone INT(10) UNIQUE,
    classes_id INT NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Address(address_id),
    FOREIGN KEY (classes_id) REFERENCES Classes(classes_id)
);

CREATE TABLE Course(
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50),
    course_description VARCHAR(50)
);

CREATE TABLE Points(
    points_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    students_id INT NOT NULL,
    course_id INT,
    points INT NOT NULL,
    FOREIGN KEY (students_id) REFERENCES Students(students_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

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

INSERT INTO Points (students_id, points) VALUES (14, 88);
INSERT INTO Points (students_id, points) VALUES (14, 89);
INSERT INTO Points (students_id, points) VALUES (14, 75);
INSERT INTO Points (students_id, points) VALUES (15, 90);
INSERT INTO Points (students_id, points) VALUES (14, 88);
INSERT INTO Points (students_id, points) VALUES (16, 91);
INSERT INTO Points (students_id, points) VALUES (15, 69);
INSERT INTO Points (students_id, points) VALUES (16, 67);
INSERT INTO Points (students_id, points) VALUES (17, 75);
INSERT INTO Points (students_id, points) VALUES (18, 76);
INSERT INTO Points (students_id, points) VALUES (19, 94);
INSERT INTO Points (students_id, points) VALUES (18, 88);
INSERT INTO Points (students_id, points) VALUES (20, 94);
INSERT INTO Points (students_id, points) VALUES (17, 90);
INSERT INTO Points (students_id, points) VALUES (21, 89);

select * from Students where students_name like '%Nguyễn%';

SELECT * FROM Students WHERE students_name LIKE '%o%';

SELECT * FROM Students WHERE age >= 24;

SELECT * FROM Students WHERE students_id = 14 OR students_id = 17;