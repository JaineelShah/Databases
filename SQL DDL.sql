
Create table Sample
(
 idcard int,
 Fname nvarchar(50),
 Lname nvarchar(50),
 income int
);

select *from Sample;


Alter table Sample add level INT NOT NULL;

Insert into Sample values (1, 'Jaineel', 'Shah', 'Male', 34000 , 1);
Insert into Sample values (2, 'John', 'James', 'Male', 430000 , 2);
Insert into Sample values (3, 'Jim', 'Room', 'Male', 60300, 1);
Insert into Sample values (4, 'Liom', 'Ronaldo', 'Female', 3000 ,3);
Insert into Sample values (5, 'Messi', 'quit', 'Female', 3000 , 2);

select *from Sample;

Truncate table Sample;

DROP table Sample;
