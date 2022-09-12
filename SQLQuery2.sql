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

INSERT INTO AddressBook
VALUES('Anand','Chincholkar','7th cross','Nagpur','Karnataka',560065,5243454345,'abc@gmail.com'),
('gurupreet','singh','8th cross','Andamaan','Karnataka',560066,1323567775,'def@gmail.com'),
('Vishnu','Srivasthav','9th cross','Bengalaru','Telangana',450065,5478908765,'ghi@gmail.com'),
('vishwas','Singh','4th cross','Guhati','Assam',660065,5243458745,'jkl@gmail.com')
