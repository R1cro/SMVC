
CREATE USER person@localhost identified by 'mysql';
GRANT usage ON *.* TO person@localhost identified BY 'mysql';
CREATE database if NOT exists persons;
GRANT all privileges on persons.* to person@localhost;
use persons;
CREATE TABLE persons
(
    id int primary key auto_increment,
    name varchar(50),
    age int,
    nickname varchar(50),
    created timestamp default now()
);
