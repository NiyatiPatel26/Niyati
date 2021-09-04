use  OnlineShopping;

CREATE TABLE Customer (
	customer_ID INT IDENTITY (1, 1) PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	contact varchar(25),
	address VARCHAR (255)
);

CREATE TABLE Categories (
	category_ID INT IDENTITY (1, 1) PRIMARY KEY,
	category_name VARCHAR (255),
	category_type varchar(255)
);

CREATE TABLE Shopping_Order (
	order_ID INT IDENTITY (1, 1) PRIMARY KEY,
	date date,
	customer_ID int FOREIGN KEY (customer_ID) 
        REFERENCES Customer (customer_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE Deliveries (
	acc_ID INT IDENTITY (1, 1) PRIMARY KEY,
	date date,
	customer_ID int FOREIGN KEY (customer_ID) 
        REFERENCES Customer (customer_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Products (
	product_ID INT IDENTITY (1, 1) PRIMARY KEY,
	product_name varchar(255),
	category_ID int FOREIGN KEY (category_ID) 
        REFERENCES Categories (category_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Seller (
	seller_ID INT IDENTITY (1, 1) PRIMARY KEY,
	seller_name varchar(255),
	product_ID int FOREIGN KEY (product_ID) 
        REFERENCES Products (product_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Payment (
	payment_ID INT IDENTITY (1, 1) PRIMARY KEY,
	date date,
	customer_ID int FOREIGN KEY (customer_ID) 
        REFERENCES Customer (customer_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Transaction_Report (
	report_ID INT IDENTITY (1, 1) PRIMARY KEY,
	customer_ID int FOREIGN KEY (customer_ID) 
        REFERENCES Customer (customer_ID) 
        ON DELETE NO ACTION ON UPDATE NO ACTION,
	order_ID int FOREIGN KEY (order_ID) 
        REFERENCES Shopping_Order (order_ID) 
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    product_ID int FOREIGN KEY (product_ID) 
        REFERENCES Products (product_ID) 
        ON DELETE NO ACTION ON UPDATE NO ACTION,
	payment_ID int FOREIGN KEY (payment_ID) 
        REFERENCES Payment (payment_ID) 
        ON DELETE NO ACTION ON UPDATE NO ACTION
);
