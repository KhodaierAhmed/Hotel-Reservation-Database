CREATE TABLE CUSTOMER (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR (40),
    last_name VARCHAR (40),
    phone INT (20),
    address VARCHAR (50),
    country VARCHAR (50),
    gender VARCHAR (20),
    date_of_birth DATE,
    email VARCHAR (30)
    );

    CREATE TABLE BOOKING (
        booking_id INT PRIMARY KEY AUTO_INCREMENT,
        customer_id INT,
        FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id) ON DELETE SET NULL,
        duration INT(5),
        number_of_guests INT (5) ,
        reservation_date DATE,
        total_price INT (10),
        payment_type VARCHAR (40),
        payment_date DATE
    );
    
    CREATE TABLE ROOM (
        room_id INT PRIMARY KEY,
        room_type VARCHAR(50),
        price INT (10),
        beds_number INT (10),
        room_floor INT (10)
    );

ALTER TABLE BOOKING 
    ADD room_id INT;

ALTER TABLE BOOKING 
    ADD food_order_id INT (50);
    

ALTER TABLE BOOKING 
    ADD FOREIGN KEY (room_id) REFERENCES ROOM(room_id) ON DELETE SET NULL;

CREATE TABLE FOOD (
    food_orders_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    customer_id INT,
    date_ DATE,
    persons INT,
    price INT,
    FOREIGN KEY (booking_id) REFERENCES BOOKING(booking_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id)
);


ALTER TABLE BOOKING 
ADD FOREIGN KEY (food_order_id) REFERENCES FOOD(food_orders_id) ON DELETE SET NULL;


INSERT INTO CUSTOMER(first_name,last_name,phone,address,country,gender,date_of_birth,email) VALUES ('Ahmed','Gaber',01017157479,'alex','egypt','male','2000-5-11','ahmed@gmail.com');
INSERT INTO CUSTOMER (first_name,last_name,phone,address,country,gender,date_of_birth,email) VALUES ('Ali','Ebrahim',015597414,'cairo','egypt','male','2000-2-8','ali@gmail.com');
INSERT INTO CUSTOMER (first_name,last_name,phone,address,country,gender,date_of_birth,email) VALUES ('mai','moftah',0125482156,'cairo','egypt','female','2003-4-8','mai@gmail.com');
INSERT INTO CUSTOMER (first_name,last_name,phone,address,country,gender,date_of_birth,email) VALUES ('michale','scofield',+96684151,'florida','USA','male','1993-9-8','scofield@gmail.com');
INSERT INTO CUSTOMER (first_name,last_name,phone,address,country,gender,date_of_birth,email) VALUES ('sara','tankready',+954841515,'New York','USA','female','2010-2-7','sara@gmail.com');
INSERT INTO CUSTOMER (first_name,last_name,phone,address,country,gender,date_of_birth,email) VALUES ('emilia','clarck',+649484494,'london','USA','female','1996-4-3','clarck@gmail.com');

ALTER TABLE BOOKING CHANGE total_price  service_price INT;


INSERT INTO BOOKING(customer_id,duration,number_of_guests,reservation_date,service_price,payment_type,payment_date,room_id,food_order_id) VALUES (5,3,5,'2020-11-5',400,'cash','2020-8-10',NULL,NULL);
INSERT INTO BOOKING (customer_id,duration,number_of_guests,reservation_date,service_price,payment_type,payment_date,room_id,food_order_id) VALUES (1,2,10,'2020-8-4',2000,'cash','2020-8-3',NULL,NULL);
INSERT INTO BOOKING (customer_id,duration,number_of_guests,reservation_date,service_price,payment_type,payment_date,room_id,food_order_id) VALUES (3,1,2,'2020-4-6',2400,'cash','2020-4-5',NULL,NULL);
INSERT INTO BOOKING (customer_id,duration,number_of_guests,reservation_date,service_price,payment_type,payment_date,room_id,food_order_id) VALUES (2,10,8,'2021-3-8',1000,'cash','2021-3-8',NULL,NULL);
INSERT INTO BOOKING (customer_id,duration,number_of_guests,reservation_date,service_price,payment_type,payment_date,room_id,food_order_id) VALUES (4,5,1,'2020-6-6',1500,'cash','2020-6-6',NULL,NULL);
INSERT INTO BOOKING (customer_id,duration,number_of_guests,reservation_date,service_price,payment_type,payment_date,room_id,food_order_id) VALUES (6,15,4,'2021-4-5',5000,'cash','2021-4-5',NULL,NULL);



INSERT INTO FOOD (booking_id,customer_id,date_,persons,price) VALUES (5,4,'2020-6-6',1,1000);
INSERT INTO FOOD (booking_id,customer_id,date_,persons,price) VALUES (4,2,'2021-3-8',8,5000);
INSERT INTO FOOD (booking_id,customer_id,date_,persons,price) VALUES (1,5,'2020-4-6',5,6000);
INSERT INTO FOOD (booking_id,customer_id,date_,persons,price) VALUES (2,1,'2020-4-8',10,2000);
INSERT INTO FOOD (booking_id,customer_id,date_,persons,price) VALUES (3,3,'2020-11-5',2,500);
INSERT INTO FOOD (booking_id,customer_id,date_,persons,price) VALUES (6,6,'2021-4-5',4,850);



UPDATE BOOKING 
SET food_order_id=1
WHERE booking_id=5;

UPDATE BOOKING 
SET food_order_id=2
WHERE booking_id=4;

UPDATE BOOKING 
SET food_order_id=3
WHERE booking_id=1;

UPDATE BOOKING 
SET food_order_id=4
WHERE booking_id=2;

UPDATE BOOKING 
SET food_order_id=5
WHERE booking_id=3;

UPDATE BOOKING 
SET food_order_id=6
WHERE booking_id=6;



INSERT INTO ROOM VALUES (1,'single',1000,1,4);
INSERT INTO ROOM VALUES (2,'double',2000,2,6);
INSERT INTO ROOM VALUES (3,'connecting room',3000,10,54);
INSERT INTO ROOM VALUES (4,'Quad',4000,4,12);
INSERT INTO ROOM VALUES (5,'cabana',2500,8,5);
INSERT INTO ROOM VALUES (6,'Adjoining rooms',1900,5,7);





DELETE FROM ROOM 
WHERE room_id=1;

DELETE FROM ROOM 
WHERE room_id=2;

DELETE FROM ROOM 
WHERE room_id=3;

DELETE FROM ROOM 
WHERE room_id=4;

DELETE FROM ROOM 
WHERE room_id=5;

DELETE FROM ROOM 
WHERE room_id=6;



INSERT INTO ROOM VALUES (1,'single',1000,1,4);
INSERT INTO ROOM VALUES (2,'double',2000,2,6);
INSERT INTO ROOM VALUES (3,'connecting room',3000,10,54);
INSERT INTO ROOM VALUES (4,'Quad',4000,4,12);
INSERT INTO ROOM VALUES (5,'cabana',2500,8,5);
INSERT INTO ROOM VALUES (6,'Adjoining rooms',1900,5,7);

UPDATE BOOKING 
SET room_id=1
WHERE booking_id=5;

UPDATE BOOKING 
SET room_id=2
WHERE booking_id=3;

UPDATE BOOKING 
SET room_id=3
WHERE booking_id=2;

UPDATE BOOKING 
SET room_id=4
WHERE booking_id=6;

UPDATE BOOKING 
SET room_id=5
WHERE booking_id=4;

UPDATE BOOKING 
SET room_id=6
WHERE booking_id=1;

CREATE TABLE CHECH_OUT (
    check_out_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_iD INT,
    FOREIGN KEY (booking_iD) References BOOKING (booking_id),
    total_price INT
);

INSERT INTO CHECH_OUT (booking_id,total_price) VALUES (1,9400);
INSERT INTO CHECH_OUT (booking_id,total_price) VALUES (2,7000);
INSERT INTO CHECH_OUT (booking_id,total_price) VALUES (3,4900);
INSERT INTO CHECH_OUT (booking_id,total_price) VALUES (4,8500);
INSERT INTO CHECH_OUT (booking_id,total_price) VALUES (5,3500);
INSERT INTO CHECH_OUT (booking_id,total_price) VALUES (6,9850);



SELECT * FROM CUSTOMER;

SELECT * FROM CUSTOMER 
ORDER BY gender;

SELECT * FROM CUSTOMER 
ORDER BY gender , first_name,last_name;

SELECT first_name , last_name
from CUSTOMER;

SELECT DISTINCT gender 
FROM CUSTOMER;

SELECT COUNT(customer_id)
 FROM CUSTOMER ;

SELECT AVG(total_price)
FROM CHECH_OUT;

SELECT SUM(total_price)
FROM CHECH_OUT;

SELECT COUNT (gender),gender
FROM CUSTOMER GROUP BY gender;

SELECT SUM(total_price), booking_iD FROM CHECH_OUT GROUP BY booking_id;

SELECT * FROM CUSTOMER
WHERE first_name LIKE '%ahmed%';

SELECT * FROM CUSTOMER 
WHERE date_of_birth LIKE '____-_4%';

SELECT last_name FROM CUSTOMER 
UNION
SELECT room_type FROM ROOM;

SELECT customer_id, first_name from CUSTOMER;

SELECT DISTINCT customer_id, first_name
FROM  CUSTOMER;

SELECT first_name
FROM CUSTOMER
WHERE customer_id IN (SELECT food_orders_id FROM FOOD WHERE persons>5);

Select first_name, last_name, phone from CUSTOMER 
WHERE customer_id IN
(SELECT room_id from ROOM where room_type='single'); 

Select reservation_date, booking_id, duration from BOOKING
WHERE customer_id IN
(SELECT food_orders_id from FOOD where price>1000);

SELECT CUSTOMER.customer_id , CUSTOMER.first_name,CUSTOMER.last_name,CHECH_OUT.total_price
FROM CUSTOMER
JOIN CHECH_OUT
ON CUSTOMER.customer_id=CHECH_OUT.check_out_id;

SELECT CUSTOMER.customer_id , CUSTOMER.first_name,CUSTOMER.last_name,CHECH_OUT.total_price
FROM CUSTOMER
INNER JOIN CHECH_OUT
ON CUSTOMER.customer_id=CHECH_OUT.check_out_id;

SELECT CHECH_OUT.check_out_id,CUSTOMER.first_name ,CUSTOMER.last_name , CUSTOMER.address,CUSTOMER.country,CHECH_OUT.total_price
FROM CUSTOMER
LEFT JOIN CHECH_OUT
ON CUSTOMER.customer_id=CHECH_OUT.check_out_id;

SELECT CUSTOMER.customer_id,CUSTOMER.first_name, BOOKING.booking_id
FROM CUSTOMER
RIGHT JOIN BOOKING ON CUSTOMER.customer_id = BOOKING.customer_id;


