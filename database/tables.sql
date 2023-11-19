-- Active: 1700433998032@@dpg-cld8j7fgsrdc73fjavi0-a.oregon-postgres.render.com@5432@henryoa@public
create table tbl_role
(
    id SERIAL PRIMARY key,
    name_role varchar(100), 
    is_active BOOLEAN DEFAULT true, 
    created_date TIMESTAMP DEFAULT current_timestamp, 
    deleted_date TIMESTAMP, 
    update_date TIMESTAMP
);

insert into tbl_role
(name_role)
values
('Admin'), 
('Client');

select * from tbl_role;

create table tbl_users
(
    user_name varchar(30) PRIMARY key,
    email VARCHAR(70) UNIQUE, 
    pass VARCHAR(30),
    profile_picture bytea, 
    id_role int REFERENCES tbl_role(id),
    is_active BOOLEAN DEFAULT true, 
    created_date TIMESTAMP DEFAULT current_timestamp, 
    deleted_date TIMESTAMP, 
    update_date TIMESTAMP
);

insert into tbl_users 
(user_name, email, pass, id_role)
values 
('henryoa', 'henryoa@unitec.edu', '777$', 1), 
('alumno01', 'alumno@unitec.edu', 'Hola13$', 2);

select * from tbl_users
where user_name = 'henryoa' and pass = '777$' and is_active = true;

drop table tbl_example;

create table tbl_example 
(
    id serial primary key, 
    data_example varchar(200),
    user_name varchar(500)
)