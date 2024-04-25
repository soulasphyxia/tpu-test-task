create table if not exists institutes
(
    institute_id bigserial
        primary key,
    name         varchar(255) not null
);


create table if not exists public.students
(
    student_id   bigserial
        primary key,
    first_name   varchar(255) not null,
    second_name  varchar(255) not null,
    last_name    varchar(255) not null,
    sex          varchar(255) not null,
    status       varchar,
    finance_type varchar
);

create table if not exists public.groups
(
    group_id          bigserial
        constraint groups_pk
            primary key,
    name              varchar(255),
    institute_id      bigint
        constraint groups___fk
            references institutes,
    year_of_admission integer not null,
    duration          integer not null
);

create table if not exists public.students_in_groups
(
    student_id bigint not null
        constraint students_in_groups___fk
            references students,
    group_id   bigint not null
        constraint students_in_groups___fk2
            references groups,
    primary key (student_id, group_id)
);

insert into public.institutes(name) values ('ИШИТР');
insert into public.institutes(name) values ('ИШНКБ');
insert into public.institutes(name) values ('ИШЭ');
insert into public.institutes(name) values ('ИШПР');
insert into public.institutes(name) values ('ИШЯТ');

INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('8В14', 1, 2021, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('8В13', 1, 2021, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('1А31', 2, 2023, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('8В31', 1, 2023, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('3-8К91', 1, 2019, 5);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('1Б21', 2, 2022, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('1А13', 2, 2021, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('2Б21', 4, 2023, 4);
INSERT INTO public.groups(name, institute_id, year_of_admission, duration) VALUES ('2Б01', 4, 2020, 4);


INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Евгения','Иванова','Александровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (1, 6);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Валерия','Войтенко','Александровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (2, 7);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Петр','Береговенко','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (3, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ярослав','Береговенко','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (4, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Мария','Иванова','Ивановна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (5, 6);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Алина','Васильева','Петровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (6, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Илья','Беликов','Никитич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (7, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Вадим','Войтенко','Иванович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (8, 1);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Валерия','Петрова','Валерьевна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (9, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Валерия','Береговенко','Геннадьевна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (10, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Елена','Береговенко','Ивановна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (11, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ольга','Беликова','Валерьевна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (12, 1);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Артем','Иванов','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (13, 7);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Алина','Васильева','Никитична','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (14, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Екатерина','Васильева','Валерьевна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (15, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Петр','Береговенко','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (16, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Дмитрий','Береговенко','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (17, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Геннадий','Петров','Иванович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (18, 5);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Дмитрий','Петров','Иванович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (19, 6);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Елена','Иванова','Петровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (20, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Дарья','Сафронова','Никитична','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (21, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Евгения','Васильева','Петровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (22, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Мария','Береговенко','Петровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (23, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ольга','Сафронова','Никитична','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (24, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Мария','Войтенко','Петровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (25, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Мария','Васильева','Валерьевна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (26, 7);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Вадим','Войтенко','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (27, 3);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Илья','Иванов','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (28, 1);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Петр','Сафронов','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (29, 5);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ярослав','Васильев','Никитич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (30, 5);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Вадим','Беликов','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (31, 7);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Геннадий','Сафронов','Никитич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (32, 5);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ярослав','Войтенко','Валерьевич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (33, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Екатерина','Беликова','Никитична','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (34, 6);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Илья','Береговенко','Валерьевич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (35, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Валерий','Войтенко','Геннадьевич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (36, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Дмитрий','Петров','Валерьевич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (37, 5);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Елена','Петрова','Александровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (38, 5);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Петр','Сафронов','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (39, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Петр','Петров','Иванович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (40, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Александр','Васильев','Никитич','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (41, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Екатерина','Войтенко','Валерьевна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (42, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Дмитрий','Беликов','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (43, 2);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ярослав','Войтенко','Иванович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (44, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Егор','Войтенко','Иванович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (45, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Валерия','Сафронова','Петровна','жен','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (46, 4);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Ярослав','Беликов','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (47, 8);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Петр','Васильев','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (48, 9);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Егор','Береговенко','Станиславович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (49, 6);
INSERT INTO public.students(first_name, second_name, last_name, sex, status, finance_type) VALUES ('Дмитрий','Береговенко','Петрович','муж','Учайщийся', 'Бюджетная основа');
INSERT INTO public.students_in_groups(student_id, group_id) VALUES (50, 8);
