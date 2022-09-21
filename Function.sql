USE Minitest1;

select count(*) from students;

select count(*), address_name from students S inner join address A on S.address_id = A.address_id and A.address_id = 1;
select count(*), address_name from students S inner join address A on S.address_id = A.address_id and A.address_id = 2;
select count(*), address_name from students S inner join address A on S.address_id = A.address_id and A.address_id = 3;
select count(*), address_name from students S inner join address A on S.address_id = A.address_id and A.address_id = 4;
select count(*), address_name from students S inner join address A on S.address_id = A.address_id and A.address_id = 5;

select avg(points), course_name from points P inner join course C on C.course_id = P.course_id and C.course_id = 1;
select avg(points), course_name from points P inner join course C on C.course_id = P.course_id and C.course_id = 2;
select avg(points), course_name from points P inner join course C on C.course_id = P.course_id and C.course_id = 3;

select C.course_id, C.course_name, avg(points)
from course C join points P on C.course_id = P.course_id
group by C.course_id, C.course_name
having avg(points) >= all (select avg(points) from points group by points.course_id);