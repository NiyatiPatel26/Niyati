use OnlineShopping;

--SELECT 
SELECT * FROM Customer;
SELECT * FROM Categories;
SELECT * FROM Deliveries;
SELECT * FROM Payment;
SELECT * FROM Products;
SELECT * FROM Seller;
SELECT * FROM Shopping_Order;
SELECT * FROM Transaction_Report;

--SELECT, COUNT,INNER JOIN, GROUP BY, HAVING, ORDER BY
SELECT
    name,
    COUNT(*) Number_of_Orders
FROM
    Customer c
INNER JOIN Shopping_Order s
    ON c.customer_ID = s.customer_ID
Group By name
Having COUNT(*) >=2
ORDER BY name ;

--SUBQUERY
SELECT
	c.customer_ID,
    name,
    date
FROM
    Customer c
	INNER JOIN Shopping_Order s
    ON c.customer_ID = s.customer_ID
WHERE
    c.customer_id IN (
        SELECT
            customer_id
        FROM
            Customer
        WHERE
            address = 'Jail Road'
    )
ORDER BY
    date DESC;

--DELETE RECORD
DELETE FROM Customer WHERE customer_ID=7;

--MERGE
CREATE TABLE Customer_Merge (
	customer_ID INT IDENTITY (1, 1) PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	contact varchar(25),
	address VARCHAR (255)
);

SELECT * FROM Customer_Merge;

insert into Customer_Merge(name,contact,address) values('Neah Patil','9898457847','Nashik Road');
insert into Customer_Merge(name,contact,address) values('Niyati Patel','9894447847','Nashik Road');
insert into Customer_Merge(name,contact,address) values('Devesh Jha','9898400047','Satpur');
insert into Customer_Merge(name,contact,address) values('Happy Singh','9891200047','Sidco');
insert into Customer_Merge(name,contact,address) values('Prajakta Dhatrak','9898452000','Jail Road');

MERGE Customer_Merge m 
    USING Customer c
ON (c.customer_ID = m.customer_ID)
WHEN MATCHED
    THEN UPDATE SET 
        m.name = c.name,
        m.contact = c.contact,
		m.address= c.address
WHEN NOT MATCHED BY TARGET 
    THEN INSERT (name,contact, address)
         VALUES (c.name, c.contact, c.address)
WHEN NOT MATCHED BY SOURCE 
    THEN DELETE;

--VIEWS
CREATE VIEW Vproduct_info
AS
SELECT
    category_type,product_name,seller_name
FROM
    Categories c
INNER JOIN Products p
        ON c.category_ID = p.category_ID
INNER JOIN Seller s
        ON p.product_ID = s.product_ID;

SELECT * FROM Vproduct_info;

SELECT 
	seller_name
FROM 
	Vproduct_info
WHERE
	category_type='Clothing';

--TRIGGER
CREATE TABLE Customer_Audit (
	customer_ID INT IDENTITY (1, 1) PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	contact varchar(25),
	address VARCHAR (255),
	updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL')
);

CREATE TRIGGER trg_customer_audit
ON Customer
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Customer_Audit(
        name,
        contact,
        address, 
        updated_at, 
        operation
    )
    SELECT
        i.name,
        contact,
        i.address,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.name,
        contact,
        d.address,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END

DROP TRIGGER trg_customer_audit;

insert into Customer(name,contact,address) values('Khushi Shah','9800057847','Up Nagar');

delete from Customer where customer_ID=11;

SELECT * from Customer;

SELECT * FROM Customer_Audit;

--STORED PROCEDURE
CREATE PROCEDURE uspFindOrderDetails(
    @date1 as DATE,
	@date2 as DATE
)
AS
BEGIN
    SELECT
        name
    FROM 
        Customer c
		INNER JOIN Shopping_Order s
		ON s.customer_ID= c.customer_ID
    WHERE
        s.date BETWEEN @date1 AND @date2;
END;

EXEC uspFindOrderDetails '2021/08/26' ,'2021/08/31' ;


