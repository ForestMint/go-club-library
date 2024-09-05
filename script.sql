DROP DATABASE IF EXISTS my_library;

CREATE DATABASE IF NOT EXISTS my_library;

CREATE TABLE my_library.Matter (
    MatterId integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
    MatterName varchar(255)
);

CREATE TABLE my_library.Member (
    MemberID integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FirstName varchar(255),
    LastName varchar(255),
    UserName varchar(255),
    Password varchar(255)
);

CREATE TABLE my_library.Reference (
    ReferenceID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Title varchar(255),
    MatterId int,
    TargetLevel varchar(255)
);

CREATE TABLE my_library.Book (
    BookID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ReferenceId int,
    OwnerId int,
    BorrowerId int
);

INSERT INTO my_library.Matter (MatterName)
VALUES
('Josekis'),
('Fuseki'),
('Chuban'),
('Yose'),
('Formes'),
('Tesuji'),
('Tsumego'),
('Tactique');