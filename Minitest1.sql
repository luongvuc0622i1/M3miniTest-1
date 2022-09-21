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
    course_id INT NOT NULL,
    points INT NOT NULL,
    FOREIGN KEY (students_id) REFERENCES Students(students_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);