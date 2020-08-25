Create database Sample
 With 
 Owner = postgres
 Encoding = 'UTF-8'
 Connection limit = -1
 
COMMENT on database Sample 
IS  'My name is Jaineel Shah and I work at KloudOne';


Create table public.Sample
(
 idcard int,
 fname varchar(50),
 lname varchar(50),
 Gender varchar(50),
 Salary int
)



Alter table public.Sample add Batch_idcard INT NOT NULL ;


INSERT INTO public.Sample values (1, 'Nat', 'Natraj', 'Male', 600000 , 1);


TRUNCATE table public.Sample

select * from public.Sample;


DROP table public.Sample;

