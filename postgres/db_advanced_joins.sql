create table classrooms (
    id integer PRIMARY KEY,
    student_id integer NOT NULL,
    section character varying(1) NOT NULL
);

insert into classrooms (id, student_id, section)
values (1, 1, 'A');

insert into classrooms (id, student_id, section)
values (2, 2, 'B');

insert into classrooms (id, student_id, section)
values (3, 3, 'C');

insert into classrooms (id, student_id, section)
values (4, 4, 'D');

insert into classrooms (id, student_id, section)
values (5, 5, 'E');

insert into classrooms (id, student_id, section)
values (6, 6, 'F');

insert into classrooms (id, student_id, section)
values (7, 7, 'G');

insert into classrooms (id, student_id, section)
values (8, 8, 'H');

insert into classrooms (id, student_id, section)
values (9, 9, 'I');

insert into classrooms (id, student_id, section)
values (10, 10, 'J');

select s.id, s.first_name, s.last_name, c.section from students s inner join classrooms c on c.student_id = s.id;

select s.id, s.first_name, s.last_name, c.section from students s left join classrooms c on c.student_id = s.id;

select s.id, s.first_name, s.last_name, c.section from students s right join classrooms c on c.student_id = s.id;

select s.id, s.first_name, s.last_name, c.section from students s full join classrooms c on c.student_id = s.id;