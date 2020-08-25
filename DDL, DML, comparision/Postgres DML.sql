Create database Sample
 With 
 Owner = postgres
 Encoding = 'UTF-8'
 Connection limit = -1
COMMENT on database Sample 
IS  'My name is Jaineel and I work at Kloudone';
SET search_path TO Sample;

Create table public.tbl_Sample
(
 ID int NOT NULL,
 Fname varchar(50) NOT NULL,
 Lame varchar(50) NOT NULL,
 Gender varchar(50) NOT NULL,
 Salary int,
 Batch_id INT,
 PRIMARY KEY(ID),
 FOREIGN KEY(Batch_id) references public.tbl_Batches(Batch_id)
)

Create table public.tbl_Batches
(
Batch_idcard INT PRIMARY KEY ,
Batch_type varchar(50) NOT NULL
)

SELECT *from public.tbl_batches
Insert into public.tbl_Sample values (1, 'Reed', 'Johnson', 'Male', 20000 , 3);
Insert into public.tbl_Sample values (2, 'Hello', 'Hi', 'Male', 12000 , 4);
Insert into public.tbl_Batches values (1 , 'Machine Learning');
select * from public.tbl_Sample;
select * from public.tbl_Batches;
UPDATE public.tbl_Sample
set Salary = 400 where ID = 1;
DELETE from public.tbl_Sample Where ID = 2
DELETE from public.tbl_Batches where Batch_id = 1;