use OnlineShopping;
Table Customer:
insert into Customer(name,contact,address) values('Neah Patil','9898457847','Nashik Road');
insert into Customer(name,contact,address) values('Niyati Patel','9894447847','Nashik Road');
insert into Customer(name,contact,address) values('Devesh Jha','9898400047','Satpur');
insert into Customer(name,contact,address) values('Prajakta Dhatrak','9898452347','Jail Road');
insert into Customer(name,contact,address) values('Amit Sharma','9898787847','Jail Road');
insert into Customer(name,contact,address) values('Suchit Koli','9898456647','D.G.P Nagar');

--Table Categories:-
insert into Categories(category_type) values('Clothing');
insert into Categories(category_type) values('Footwear');
insert into Categories(category_type) values('Accessories');

--Table Deliveries:-
insert into Deliveries(date,customer_ID) values('2021/09/01',1);
insert into Deliveries(date,customer_ID) values('2021/09/01',2);
insert into Deliveries(date,customer_ID) values('2021/09/02',1);
insert into Deliveries(date,customer_ID) values('2021/09/02',3);
insert into Deliveries(date,customer_ID) values('2021/09/02',4);
insert into Deliveries(date,customer_ID) values('2021/09/03',1);

--Table Payment:-
insert into Payment(date,customer_ID) values('2021/09/03',1);
insert into Payment(date,customer_ID) values('2021/09/02',2);
insert into Payment(date,customer_ID) values('2021/09/03',4);
insert into Payment(date,customer_ID) values('2021/09/03',5);
insert into Payment(date,customer_ID) values('2021/09/01',1);
insert into Payment(date,customer_ID) values('2021/09/03',2);
insert into Payment(date,customer_ID) values('2021/09/01',3);
insert into Payment(date,customer_ID) values('2021/09/01',1);

--Table Products:-
insert into Products(product_name,category_ID) values('Jeans',1);
insert into Products(product_name,category_ID) values('Tops',1);
insert into Products(product_name,category_ID) values('Dresses',1);
insert into Products(product_name,category_ID) values('T-Shirts',1);
insert into Products(product_name,category_ID) values('Shoes',2);
insert into Products(product_name,category_ID) values('Flip-Flops',2);
insert into Products(product_name,category_ID) values('Sandals',2);
insert into Products(product_name,category_ID) values('Slippers',2);
insert into Products(product_name,category_ID) values('Hair Accessories',3);
insert into Products(product_name,category_ID) values('Sunglasses',3);
insert into Products(product_name,category_ID) values('Belts',3);
insert into Products(product_name,category_ID) values('Travel Acessories',3);

--Table Seller:-
insert into Seller(seller_name,product_ID) values('THE BIT GROUP',1);
insert into Seller(seller_name,product_ID) values('Pharma Packs',3);
insert into Seller(seller_name,product_ID) values('Zappos Retail',5);
insert into Seller(seller_name,product_ID) values('AnkerDirect',4);
insert into Seller(seller_name,product_ID) values('THE BIT GROUP',2);
insert into Seller(seller_name,product_ID) values('THE BIT GROUP',6);
insert into Seller(seller_name,product_ID) values('Pharma Packs',7);
insert into Seller(seller_name,product_ID) values('Square Trade',8);
insert into Seller(seller_name,product_ID) values('Square Trade',9);
insert into Seller(seller_name,product_ID) values('Zappos Retail',10);
insert into Seller(seller_name,product_ID) values('Sarsa',11);
insert into Seller(seller_name,product_ID) values('Sarsa',12);

--Table Shopping_Order:-
insert into Shopping_Order(date,customer_ID) values('2021/08/26',1);
insert into Shopping_Order(date,customer_ID) values('2021/08/26',2);
insert into Shopping_Order(date,customer_ID) values('2021/08/26',4);
insert into Shopping_Order(date,customer_ID) values('2021/08/28',3);
insert into Shopping_Order(date,customer_ID) values('2021/08/28',1);
insert into Shopping_Order(date,customer_ID) values('2021/08/31',1);
insert into Shopping_Order(date,customer_ID) values('2021/09/01',5);
insert into Shopping_Order(date,customer_ID) values('2021/08/27',2);

--Table Transaction Report:-
insert into Transaction_Report(customer_ID,order_ID,product_ID,payment_ID) values(1,1,1,1);
insert into Transaction_Report(customer_ID,order_ID,product_ID,payment_ID) values(2,8,10,2);
insert into Transaction_Report(customer_ID,order_ID,product_ID,payment_ID) values(4,3,2,3);
insert into Transaction_Report(customer_ID,order_ID,product_ID,payment_ID) values(3,4,12,7);
insert into Transaction_Report(customer_ID,order_ID,product_ID,payment_ID) values(1,5,10,5);
