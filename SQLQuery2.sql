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

--------(UC3)Insert the data---------
INSERT INTO AddressBook
VALUES('Anand','Chincholkar','7th cross','Nagpur','Karnataka',560065,5243454345,'abc@gmail.com'),
('gurupreet','singh','8th cross','Andamaan','Karnataka',560066,1323567775,'def@gmail.com'),
('Vishnu','Srivasthav','9th cross','Bengalaru','Telangana',450065,5478908765,'ghi@gmail.com'),
('vishwas','Singh','4th cross','Guhati','Assam',660065,5243458745,'jkl@gmail.com');

---------(UC4)-upadte the data----------
UPDATE AddressBook set PhoneNumber=1234567890 where FirstName='gurupreet';
UPDATE AddressBook set State='Maharashtra',City='Mumbai' where FirstName='Shivraj';

select * from AddressBook;

----------(UC5)AblitiyTheData-------
Delete From AddressBook where LastName='Singh';

Select * from AddressBook;

-----------(UC6)RetriveThepersoOnCityORState-------
select * from AddressBook;
-----------inserted some more data to execute the uc--------------
INSERT INTO AddressBook
Values('Vishwas','rana','9th main','Bangaluru','Karnataka',560087,1234567897,'jkl@gmail.com'),
('GurPreet','Kumar','10th main','Andamaan','Andamaan',560097,1234567807,'mno@gmail.com'),
('AbhiShek','Jadhao','11th main','Thane','Maharashtra',561237,1653267897,'pqr@gmail.com');
-------------UC6-retrive the person belonging to city or state--------------
SELECT FirstName From AddressBook where  City='Thane' or State='Maharashtra';

-------UC7-Ability to count the Size of the addressBook by state and city------------
SELECT COUNT(FirstName) as AddressBookCount,State,City from AddressBook group by State,City;
select * from AddressBook;
 
 ----------UC8 Retrive the entires sorted alphabetically by the persons name for given city--------
SELECT FirstName,City from AddressBook ORDER BY FirstName;

----to retrive all the data alphabetically order by firstname--------
SELECT * from AddressBook ORDER BY FirstName;

----to retrive all the data alphabetically order by City--------
SELECT * from AddressBook ORDER BY City;

-----UC9-Identify addressbook with name and type----------
ALTER TABLE AddressBook
ADD contactType Varchar(200);

Select * from AddressBook;
----Insert into AddressBook(FirstName,LastName ,Address,City,State,Zip,PhoneNumber,Email) Values('Gaurav','gahukar','12th main','Bengaluru','Karnataka',456765,9876545678,'stu@gmail.com');

UPDATE AddressBook set contactType='Friends' where FirstName='Gurpreet';
UPDATE AddressBook set contactType='Proffession' where FirstName='Vishnu';
UPDATE AddressBook set contactType='Friends' where FirstName='Vishwas';
UPDATE AddressBook set contactType='Profession' where FirstName='Abhishek';
UPDATE AddressBook set contactType='Family' where FirstName='Gaurav';

---------UC10-Ability to get the number count by persons-----------
SELECT COUNT(*) as type,contactType from AddressBook group by contactType;
