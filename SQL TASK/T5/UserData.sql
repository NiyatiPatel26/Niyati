--Table Adjuster
CREATE TABLE Adjuster (
aid varchar(50) primary key,
aname varchar(50) not null
);

--Table UserPersonal
CREATE TABLE userPersonal (
uid varchar(50) primary key,
ufnm varchar(50) not null,
aid varchar(50) foreign key references Adjuster(aid) 
ON DELETE CASCADE ON UPDATE CASCADE
);

--DATA INSERTION:- Adjuster
INSERT INTO Adjuster (aid,aname) values ('4170','Happy Singh');
INSERT INTO Adjuster (aid,aname) values ('1680','Tushar Patil');
INSERT INTO Adjuster (aid,aname) values ('4931 ','Neha Patil');
INSERT INTO Adjuster (aid,aname) values ('149','Suchit Koli');
INSERT INTO Adjuster (aid,aname) values ('687','Devesh Jha');
INSERT INTO Adjuster (aid,aname) values ('6251','Amit Sharma');
INSERT INTO Adjuster (aid,aname) values ('2431','Prajakta Dhatrak');
INSERT INTO Adjuster (aid,aname) values ('3194','Niyati Patel');
INSERT INTO Adjuster (aid,aname) values ('8587','Nensi Chang');
INSERT INTO Adjuster (aid,aname) values ('1972','Christin Ray');
INSERT INTO Adjuster (aid,aname) values ('2580','Sujit Leo');

--DATA INSERTION:- userPersonal
INSERT INTO userPersonal (uid,ufnm,aid) values ('1500','Lane Johnson','4170');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1501','Susan Copeland','1680');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1502','Charles Logue','4931');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1503','Brent Andrews','149');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1504','Larry Blasingame','687');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1505','Aaron Paulson','3194');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1506','Buddy Ables','3194');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1507','Brian Griffin','3194');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1508','Brian Ward','8587');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1509','Christopher Dean','1972');
INSERT INTO userPersonal (uid,ufnm,aid) values ('1510','Johyn Doe','1972');

select * from Adjuster;
select * from userPersonal;

--Write a query to retrieve users from the tables. Input will be given in format 2431,2580' upon receiving the input, you should return user FullNameFL and AdjusterId

CREATE FUNCTION SplitString
(    
    @Input NVARCHAR(MAX),
    @Character CHAR(1)
)
RETURNS @Output TABLE (
    Item NVARCHAR(1000)
)
AS
BEGIN
    DECLARE @StartIndex INT, @EndIndex INT
 
    SET @StartIndex = 1
    IF SUBSTRING(@Input, LEN(@Input) - 1, LEN(@Input)) <> @Character
    BEGIN
        SET @Input = @Input + @Character
    END
 
    WHILE CHARINDEX(@Character, @Input) > 0
    BEGIN
        SET @EndIndex = CHARINDEX(@Character, @Input)
         
        INSERT INTO @Output(Item)
        SELECT SUBSTRING(@Input, @StartIndex, @EndIndex - 1)
         
        SET @Input = SUBSTRING(@Input, @EndIndex + 1, LEN(@Input))
    END
 
    RETURN
END
GO

CREATE PROCEDURE GetUserDetails
    @Aid VARCHAR(50)
AS
BEGIN
    SELECT a.Aid as AdjusterID, Ufnm as FullNameFL
    FROM Adjuster a
	inner join UserPersonal up on a.Aid=up.Aid
    WHERE a.Aid IN(
        SELECT CAST(Item AS INTEGER)
        FROM dbo.SplitString(@Aid, ',')
    )
END


EXEC GetUserDetails '3194,1972'