CREATE TABLE Depm
(
	Did int PRIMARY KEY,
	Dname varchar(50)
);

INSERT INTO Depm (Did,Dname) VALUES (101,'CSE');
INSERT INTO Depm (Did,Dname) VALUES (102,'ECE');
SELECT * FROM Depm;
CREATE TABLE Sample
(
	ID int PRIMARY KEY,
	FirstName varchar(50),
	LastName varchar(50),
 	Gender varchar(50),
 	Email varchar(50),
 	Grade varchar(3),
 	Did int NOT NULL,
 	FOREIGN KEY(Did) REFERENCES Depm(Did)
);

INSERT INTO Sample (FirstName,LastName,Gender,Email,Grade,Did) VALUES ('Jaineel','Shah','male','acjbsnascn@gmail.com', 'A+',101); 
INSERT INTO Sample (FirstName,LastName,Gender,Email,Grade,Did) VALUES ('Nat','Natraj','Female','asdsada@hotmail.com','A',102);

SELECT * FROM Employees;

CREATE OR REPLACE FUNCTION total_Sample()
RETURNS int as $total$
DECLARE total int;
BEGIN
SELECT COUNT(*) INTO total from Sample;
RETURN total;
END;
$total$ language plpgsql;
SELECT total_Sample();
CREATE TABLE Staff
(
	ID int NOT NULL PRIMARY KEY,
	FIRSTNAME text NOT NULL ,
	LASTNAME text NOT NULL
);

SELECT *FROM Staff;
CREATE OR REPLACE FUNCTION Staff_details
RETURNS trigger as $insert$
BEGIN
INSERT INTO Staff(ID , firstname , lastname )VALUES(new.ID,new.firstname,new.lastname);
RETURN new;
END;
$insert$ language plpgsql;


CREATE TRIGGER employees_insert after insert on Sample
FOR EACH ROW EXECUTE PROCEDURE Staff_details; 