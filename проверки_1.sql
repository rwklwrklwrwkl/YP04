INSERT INTO students (last_name, first_name, birth_date, group_id)
VALUES ('Тестов', 'Иван', '2007-05-10', 999);

UPDATE groups SET group_id = 10 WHERE group_id = 1;

SELECT * FROM students;
SELECT * FROM lessons;

UPDATE groups SET group_id = 1 WHERE group_id = 10;

INSERT INTO groups (group_name, specialty, admission_year)
VALUES ('ТЕСТ-01', 'Тестовая специальность', 2026);

INSERT INTO students (last_name, first_name, birth_date, group_id)
VALUES ('Тестовый', 'Студент', '2007-01-01',
        (SELECT group_id FROM groups WHERE group_name = 'ТЕСТ-01'));

SELECT * FROM students;

DELETE FROM groups WHERE group_name = 'ТЕСТ-01';

SELECT * FROM students;

DELETE FROM disciplines WHERE discipline_id = 1;

INSERT INTO grades (student_id, discipline_id, grade, grade_date)
VALUES (1, 1, 7, '2026-09-22');

INSERT INTO groups (group_name, specialty, admission_year)
VALUES ('П-23', 'Программирование', 2026);

SELECT * FROM groups;
