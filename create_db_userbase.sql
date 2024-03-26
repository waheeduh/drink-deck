-- *************************************************************
-- This script creates the userbase database
-- for Drink Deck. Composed by Jacob Chung
-- *************************************************************


-- create the database
DROP DATABASE IF EXISTS userbase;
CREATE DATABASE userbase;


-- select the database
USE userbase;


-- create the tables
CREATE TABLE user_accounts (
  user_id		INT(4) 			PRIMARY KEY 		AUTO_INCREMENT,
  first_name 	VARCHAR(50)		NOT NULL,
  last_name 	VARCHAR(50) 	NOT NULL,
  address 		VARCHAR(100)    NOT NULL,
  zip_code 		VARCHAR(10)     NOT NULL,
  state 		VARCHAR(50)     NOT NULL,
  phone_number  VARCHAR(15)     NOT NULL,
  email 		VARCHAR(100)	NOT NULL			UNIQUE,
  balance 		DECIMAL(10, 2) 	DEFAULT 0.00
);


CREATE TABLE order_details (
  order_id 			INT 		   PRIMARY KEY      AUTO_INCREMENT,
  user_id 			INT,
  drink_type 		VARCHAR(100),
  toppings 			VARCHAR(100),
  total_drink_count INT            DEFAULT 0,
  total_price 		DECIMAL(10, 2) DEFAULT 0.00,
  order_date        DATE           NOT NULL
  -- FOREIGN KEY (user_id) REFERENCES user_accounts(user_id)
);


-- insert rows into the tables
INSERT INTO user_accounts (first_name, last_name, address, zip_code, state, phone_number, email, balance) VALUES
('John', 'Doe', '123 Main St', '12345', 'CA', '555-123-4567', 'john.doe@example.com', 10.00),
('Jane', 'Smith', '456 Elm St', '54321', 'NY', '555-987-6543', 'jane.smith@example.com', 43.20),
('Michael', 'Johnson', '789 Oak St', '67890', 'TX', '555-555-5555', 'michael.johnson@example.com', 21.92),
('Emily', 'Brown', '101 Pine St', '45678', 'FL', '555-222-3333', 'emily.brown@example.com', 106.08),
('David', 'Wilson', '222 Cedar St', '98765', 'WA', '555-888-9999', 'david.wilson@example.com', 76.43),
('Alice', 'Johnson', '123 Maple St', '12345', 'CA', '555-111-2222', 'alice.johnson@example.com', 150.75),
('Bob', 'Smith', '456 Oak St', '54321', 'NY', '555-333-4444', 'bob.smith@example.com', 120.50),
('Charlie', 'Brown', '789 Pine St', '67890', 'TX', '555-555-6666', 'charlie.brown@example.com', 180.25),
('Diana', 'Wilson', '101 Elm St', '45678', 'FL', '555-777-8888', 'diana.wilson@example.com', 90.80),
('Edward', 'Miller', '222 Cedar St', '98765', 'WA', '555-999-0000', 'edward.miller@example.com', 140.90),
('Eva', 'Garcia', '321 Walnut St', '13579', 'CA', '555-123-2222', 'eva.garcia@example.com', 175.30),
('Frank', 'Martinez', '654 Birch St', '24680', 'NY', '555-333-5555', 'frank.martinez@example.com', 60.40),
('Grace', 'Lopez', '987 Maple St', '98765', 'TX', '555-555-7777', 'grace.lopez@example.com', 110.20),
('Harry', 'Hernandez', '101 Oak St', '12345', 'FL', '555-777-9999', 'harry.hernandez@example.com', 130.60),
('Isabella', 'Gonzalez', '222 Pine St', '54321', 'WA', '555-999-1111', 'isabella.gonzalez@example.com', 95.75),
('Jack', 'Lee', '111 Elm St', '67890', 'CA', '555-111-3333', 'jack.lee@example.com', 185.45),
('Katherine', 'Clark', '444 Cedar St', '45678', 'NY', '555-333-6666', 'katherine.clark@example.com', 170.80),
('Luke', 'Scott', '777 Walnut St', '98765', 'TX', '555-555-8888', 'luke.scott@example.com', 100.30),
('Mia', 'Young', '888 Birch St', '12345', 'FL', '555-777-0000', 'mia.young@example.com', 75.90),
('Noah', 'Hall', '999 Maple St', '54321', 'WA', '555-999-2222', 'noah.hall@example.com', 150.25),
('Olivia', 'Lopez', '777 Pine St', '67890', 'CA', '555-111-4444', 'olivia.lopez@example.com', 115.60),
('Peter', 'King', '888 Elm St', '45678', 'NY', '555-333-7777', 'peter.king@example.com', 190.20),
('Quinn', 'Walker', '999 Cedar St', '98765', 'TX', '555-555-9999', 'quinn.walker@example.com', 85.40),
('Rachel', 'Young', '333 Walnut St', '12345', 'FL', '555-777-1111', 'rachel.young@example.com', 120.75),
('Samuel', 'Taylor', '444 Birch St', '54321', 'WA', '555-999-3333', 'samuel.taylor@example.com', 160.90),
('Sophia', 'Martin', '555 Maple St', '67890', 'CA', '555-111-5555', 'sophia.martin@example.com', 55.30),
('Thomas', 'Anderson', '666 Oak St', '45678', 'NY', '555-333-8888', 'thomas.anderson@example.com', 180.45),
('Uma', 'Parker', '777 Pine St', '98765', 'TX', '555-555-0000', 'uma.parker@example.com', 65.70),
('Vincent', 'Wright', '888 Elm St', '12345', 'FL', '555-777-2222', 'vincent.wright@example.com', 140.80),
('Wendy', 'Hill', '999 Cedar St', '54321', 'WA', '555-999-4444', 'wendy.hill@example.com', 195.60),
('Xavier', 'Cole', '111 Walnut St', '67890', 'CA', '555-111-6666', 'xavier.cole@example.com', 110.25),
('Yasmine', 'Hayes', '222 Oak St', '45678', 'NY', '555-333-9999', 'yasmine.hayes@example.com', 145.30),
('Zoe', 'Baker', '333 Pine St', '98765', 'TX', '555-555-1111', 'zoe.baker@example.com', 80.90),
('Adam', 'Gibson', '444 Elm St', '12345', 'FL', '555-777-3333', 'adam.gibson@example.com', 100.40),
('Bella', 'Adams', '555 Cedar St', '54321', 'WA', '555-999-5555', 'bella.adams@example.com', 155.75),
('Christopher', 'Moore', '777 Oak St', '12345', 'CA', '555-111-2222', 'christopher.moore@example.com', 175.25),
('Elizabeth', 'Lloyd', '888 Pine St', '54321', 'NY', '555-333-4444', 'elizabeth.lloyd@example.com', 110.80),
('Gabriel', 'Barnes', '999 Elm St', '67890', 'TX', '555-555-6666', 'gabriel.barnes@example.com', 140.90),
('Hannah', 'Reed', '111 Cedar St', '45678', 'FL', '555-777-8888', 'hannah.reed@example.com', 90.75),
('Ian', 'Foster', '222 Maple St', '98765', 'WA', '555-999-0000', 'ian.foster@example.com', 130.60),
('Jennifer', 'Murray', '333 Walnut St', '13579', 'CA', '555-123-2222', 'jennifer.murray@example.com', 95.30),
('Kevin', 'Coleman', '444 Oak St', '24680', 'NY', '555-333-5555', 'kevin.coleman@example.com', 120.20),
('Laura', 'Bryant', '555 Pine St', '98765', 'TX', '555-555-7777', 'laura.bryant@example.com', 85.40),
('Matthew', 'Nguyen', '666 Cedar St', '12345', 'FL', '555-777-9999', 'matthew.nguyen@example.com', 110.75),
('Natalie', 'Sullivan', '777 Maple St', '54321', 'WA', '555-999-1111', 'natalie.sullivan@example.com', 150.90),
('Oliver', 'Fisher', '888 Elm St', '67890', 'CA', '555-111-3333', 'oliver.fisher@example.com', 65.60),
('Patricia', 'Collins', '999 Birch St', '45678', 'NY', '555-333-6666', 'patricia.collins@example.com', 100.80),
('Ryan', 'Nguyen', '111 Walnut St', '98765', 'TX', '555-555-8888', 'ryan.nguyen@example.com', 145.25),
('Sarah', 'Graham', '222 Oak St', '12345', 'FL', '555-777-0000', 'sarah.graham@example.com', 75.30),
('Tyler', 'Chapman', '333 Pine St', '54321', 'WA', '555-999-2222', 'tyler.chapman@example.com', 155.60);


INSERT INTO order_details (user_id, drink_type, toppings, total_drink_count, total_price, order_date) VALUES
(23, 'Green Tea', 'Honey', 2, 7.00, '2023-05-18'),
(7, 'Coffee', 'Cream', 3, 9.00, '2023-08-21'),
(49, 'Espresso', 'None', 1, 2.50, '2023-09-05'),
(14, 'Boba Tea', 'Tapioca Pearls', 4, 16.00, '2023-11-03'),
(31, 'Strawberry Banana Smoothie', 'Protein Powder', 1, 5.50, '2023-07-29'),
(2, 'Iced Coffee', 'Vanilla Syrup', 5, 18.75, '2023-06-12'),
(42, 'Cappuccino', 'Cinnamon', 1, 4.25, '2023-10-17'),
(18, 'Matcha Latte', 'Coconut Milk', 3, 13.50, '2023-12-30'),
(37, 'Cold Brew', 'Almond Milk', 2, 8.00, '2023-07-05'),
(9, 'Americano', 'Whipped Cream', 4, 13.00, '2023-09-18'),
(22, 'Hot Chocolate', 'Marshmallows', 1, 3.75, '2023-08-10'),
(5, 'Mocha', 'Chocolate Sauce', 3, 12.75, '2023-10-01'),
(45, 'Latte', 'Hazelnut Syrup', 2, 9.00, '2023-11-20'),
(12, 'Chai Tea Latte', 'Caramel Drizzle', 1, 4.25, '2023-06-25'),
(38, 'Iced Tea', 'Lemon', 5, 13.75, '2023-07-12'),
(17, 'Frappuccino', 'Whipped Cream', 1, 5.00, '2023-12-08'),
(29, 'Turmeric Latte', 'Honey', 3, 14.25, '2023-05-29'),
(47, 'Caramel Macchiato', 'Vanilla Syrup', 2, 9.00, '2023-09-29'),
(1, 'Pumpkin Spice Latte', 'Cinnamon', 4, 19.00, '2023-11-13'),
(33, 'Iced Matcha Latte', 'Coconut Milk', 1, 4.75, '2023-06-19'),
(21, 'Hot Tea', 'Lemon', 2, 5.00, '2023-08-05'),
(41, 'Caramel Latte', 'Caramel Sauce', 3, 13.50, '2023-07-27'),
(13, 'Iced Caramel Macchiato', 'Vanilla Syrup', 1, 4.75, '2023-10-09'),
(48, 'Flat White', 'Cinnamon', 2, 8.50, '2023-09-14'),
(3, 'Hazelnut Latte', 'Hazelnut Syrup', 1, 4.50, '2023-08-23'),
(27, 'Iced Chai Latte', 'Caramel Drizzle', 3, 12.75, '2023-10-25'),
(6, 'Hot Matcha Latte', 'Coconut Milk', 1, 4.75, '2023-11-28'),
(36, 'Vanilla Latte', 'Vanilla Syrup', 4, 18.00, '2023-07-22'),
(19, 'Iced Vanilla Latte', 'Vanilla Syrup', 2, 9.00, '2023-05-15'),
(44, 'Peppermint Mocha', 'Peppermint Syrup', 1, 4.75, '2023-08-01'),
(24, 'Hot Apple Cider', 'Cinnamon', 3, 10.50, '2023-10-20'),
(34, 'Iced Cappuccino', 'Cinnamon', 1, 4.25, '2023-09-07'),
(8, 'Cinnamon Dolce Latte', 'Cinnamon Dolce Syrup', 2, 9.50, '2023-11-30'),
(26, 'Iced Hazelnut Latte', 'Hazelnut Syrup', 5, 23.75, '2023-08-03'),
(35, 'Salted Caramel Mocha', 'Caramel Sauce', 1, 4.75, '2023-07-31'),
(15, 'Hot Matcha Tea', 'Honey', 1, 3.75, '2023-09-21'),
(10, 'Iced Salted Caramel Mocha', 'Caramel Sauce', 2, 9.50, '2023-12-05'),
(39, 'Chamomile Tea', 'Honey', 3, 9.00, '2023-08-12'),
(30, 'Iced Peppermint Mocha', 'Peppermint Syrup', 1, 4.75, '2023-10-07'),
(4, 'Caramel Apple Spice', 'Cinnamon', 2, 8.00, '2023-11-24'),
(25, 'Iced Cinnamon Dolce Latte', 'Cinnamon Dolce Syrup', 1, 4.75, '2023-07-19'),
(43, 'Caramel Iced Coffee', 'Caramel Sauce', 4, 18.00, '2023-06-15'),
(16, 'Iced Salted Caramel Mocha', 'Caramel Sauce', 3, 14.25, '2023-09-06'),
(11, 'Caramel Apple Spice', 'Cinnamon', 1, 4.00, '2023-08-28'),
(28, 'Iced Cinnamon Dolce Latte', 'Cinnamon Dolce Syrup', 5, 23.75, '2023-07-18'),
(46, 'Iced Chai Tea Latte', 'Caramel Drizzle', 4, 17.00, '2023-09-14'),
(20, 'Hot Vanilla Latte', 'Vanilla Syrup', 3, 13.50, '2023-07-01'),
(32, 'Iced Mocha', 'Chocolate Sauce', 2, 8.50, '2023-11-10'),
(40, 'Peppermint Hot Chocolate', 'Peppermint Syrup', 1, 4.25, '2023-08-24'),
(0, 'Caramel Iced Coffee', 'Caramel Sauce', 2, 9.00, '2023-12-18');





