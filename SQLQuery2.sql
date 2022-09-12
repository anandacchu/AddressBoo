------(UC1-Create database)---------
CREATE DATABASE ADDRESS_BOOK_SERVICES;

-------UC2-create table for addressbook services -----------
CREATE TABLE AddressBook(
FirstName varchar(200),
LastName varchar(200),
Address varchar(1000),
City char(100),
State char(100),
Zip bigint,
PhoneNumber bigint,
Email varchar(200)
);
