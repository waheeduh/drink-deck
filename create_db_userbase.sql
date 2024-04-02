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
  drink_id			INT,
  topping_id		INT,
  size				ENUM('Small', 'Medium', 'Large'),
  sugar_level		ENUM('Less', 'Regular', 'Extra'),
  substitution_id 	INT,			
  total_drink_count INT            DEFAULT 0,
  total_price 		DECIMAL(10, 2) DEFAULT 0.00,
  order_date        DATE           NOT NULL
);

CREATE TABLE drinks (
    drink_id 			INT			PRIMARY KEY		  		AUTO_INCREMENT,
    drink_name 			VARCHAR(250) 						NOT NULL,
    drink_description 	VARCHAR(250)						NOT NULL,
    drink_price 		DECIMAL(10, 2)						NOT NULL,
    ingredients 		VARCHAR(250)						NOT NULL
);

CREATE TABLE toppings (
    topping_id 		INT					AUTO_INCREMENT PRIMARY KEY,
    topping_name 	VARCHAR(255) 		NOT NULL,
    topping_price 	DECIMAL(10, 2) 		NOT NULL
);

CREATE TABLE substitutions (
	substitution_id   	INT 				PRIMARY KEY,
	substitution_name  	VARCHAR(50),          
	substitution_price  DECIMAL(10,2)   
);

INSERT INTO drinks (drink_name, drink_description, drink_price, ingredients) VALUES 
-- COLD DRINKS
('Iced Coffee', 'Refreshing iced coffee made with freshly brewed coffee, milk, and ice.', 3.99, 'Coffee, Milk, Ice'),
('Iced Latte', 'Chilled latte made with espresso, milk, and ice.', 4.49, 'Espresso, Milk, Ice'),
('Lemonade', 'Classic lemonade made with freshly squeezed lemons and sugar.', 2.99, 'Lemon Juice, Sugar, Water, Ice'),
('Strawberry Lemonade', 'Tangy lemonade infused with fresh strawberries.', 3.49, 'Lemonade, Strawberry Puree, Ice'),
('Blueberry Smoothie', 'Creamy smoothie made with blueberries, yogurt, and honey.', 4.99, 'Blueberries, Yogurt, Honey, Ice'),
('Mango Smoothie', 'Refreshing smoothie made with ripe mangoes, yogurt, and ice.', 5.49, 'Mangoes, Yogurt, Ice'),
('Berry Blast Smoothie', 'A burst of berry flavors with strawberries, blueberries, and raspberries.', 5.99, 'Strawberries, Blueberries, Raspberries, Yogurt, Ice'),
('Red Bull', 'Energy drink to give you wings, with a fruity flavor.', 2.79, 'Carbonated Water, Sugar, Caffeine, Taurine, B-Vitamins'),
('Monster Energy', 'High-energy drink with a bold flavor.', 3.49, 'Carbonated Water, Sugar, Caffeine, Taurine, B-Vitamins'),
('Rockstar Energy', 'Power-packed energy drink with a tropical twist.', 3.29, 'Carbonated Water, Sugar, Caffeine, Taurine, B-Vitamins'),
('Dasani Spring Water', 'Refreshing spring water sourced from natural springs.', 1.49, 'Spring Water'),
('Evian Spring Water', 'Premium natural spring water imported from France.', 2.99, 'Spring Water'),
('Coca-Cola', 'Classic cola with a refreshing taste.', 1.99, 'Carbonated Water, Sugar, Caramel Color, Phosphoric Acid, Natural Flavors, Caffeine'),
('Pepsi', 'Refreshing cola with a hint of citrus.', 1.99, 'Carbonated Water, Sugar, Caramel Color, Phosphoric Acid, Natural Flavors, Caffeine'),
('Sprite', 'Crisp lemon-lime soda.', 1.79, 'Carbonated Water, Sugar, Citric Acid, Natural Flavors, Sodium Citrate'),
-- HOT DRINKS
('Hot coffee', 'Freshly brewed coffee with your choice of milk and sweetness', 3.99, 'Ingredients' ),
('Hot Chocolate', 'Creamy chocolatey sweet goodness topped with soft marshmellows', 5.99, 'Ingredients'),
('Hot Apple Cider', 'A soothing blend of crisp apples and warm spices', 3.99, 'Ingredients'),
('Adeni Chai', 'A traditional Yemeni tea infused with fragrant spices and brewed to perfection with your choice of milk', 5.99, 'Ingredients'),
('Punjabi Chai', 'A traditional Indian tea brewed with fragrant spices and rich black tea leaves', 6.99, 'Ingredients'),
('Latte', 'Freshly brewed coffee with your choice of milk and syrup', 4.99, 'Ingredients'),
('Matcha Latte', 'Vibrant matcha with creamy milk and sugar', 6.99, 'Ingredients'),
('Fresh Ginger Tea', 'Soothing ginger tea with your choice of sweetner', 3.99, 'Ingredients'),
('Gingerbread Latte', 'a comforting blend of rich espresso, steamed milk, and warm gingerbread spices, topped with a velvety foam', 4.99, 'Ingredients'),
('Caramal Machiatto','bold espresso, velvety steamed milk, and swirls of luscious caramel', 5.99, 'Ingredients'),
('Green Tea', 'Soothing green tea with your choice of sweetner', 2.99, 'Ingredients'),
('Black Tea', 'Soothing black tea with your choice of sweetner', 3.99, 'Ingredients'),
('Mocha Latte', 'Espresso with velvety steamed milk and decadent chocolate', 4.99, 'Ingredients'),
('Hot Cranberry Cider', 'Soothing hot cranberry cider with your choice of sweetner', 3.99, 'Ingredients'),
('Mint Tea', 'Refreshing mint tea with your choice of sweetner', 2.99, 'Ingredients');

INSERT INTO substitutions (substitution_id, substitution_name, substitution_price) VALUES 
(0, 'Almond Milk',1.00),
(1, 'Coconut Milk',1.00),
(2, 'Oatmilk',1.00),
(3, 'Stevia',0.50),
(4, 'Honey',0.50),
(5, 'Maple Syrup', 0.50);

INSERT INTO toppings (topping_name, topping_price) VALUES 
('Whipped Cream', 0.50),
('Chocolate Syrup', 0.75),
('Caramel Drizzle', 0.60),
('Vanilla Syrup', 0.50),
('Hazelnut Syrup', 0.60),
('Mint Leaves', 0.40),
('Lemon Slice', 0.30),
('Strawberry Slices', 0.50),
('Blueberry Topping', 0.45),
('Cherry on Top', 0.40),
('Coconut Flakes', 0.55),
('Almond Bits', 0.65),
('Marshmallows', 0.50),
('Cinnamon Powder', 0.35),
('Ginger Syrup', 0.60);

-- insert rows into the tables
INSERT INTO user_accounts (first_name, last_name, address, zip_code, state, phone_number, email, balance) VALUES
('John', 'Doe', '123 Main St', '12345', 'CA', '555-123-4567', 'john.doe@example.com', 10.00),
('Jane', 'Smith', '456 Elm St', '54321', 'NY', '555-987-6543', 'jane.smith@example.com', 23.20),
('Michael', 'Johnson', '789 Oak St', '67890', 'TX', '555-555-5555', 'michael.johnson@example.com', 21.92),
('Emily', 'Brown', '101 Pine St', '45678', 'FL', '555-222-3333', 'emily.brown@example.com', 16.08),
('David', 'Wilson', '222 Cedar St', '98765', 'WA', '555-888-9999', 'david.wilson@example.com', 6.43),
('Alice', 'Johnson', '123 Maple St', '12345', 'CA', '555-111-2222', 'alice.johnson@example.com', 50.75),
('Bob', 'Smith', '456 Oak St', '54321', 'NY', '555-333-4444', 'bob.smith@example.com', 20.50),
('Charlie', 'Brown', '789 Pine St', '67890', 'TX', '555-555-6666', 'charlie.brown@example.com', 23.25),
('Diana', 'Wilson', '101 Elm St', '45678', 'FL', '555-777-8888', 'diana.wilson@example.com', 13.80),
('Edward', 'Miller', '222 Cedar St', '98765', 'WA', '555-999-0000', 'edward.miller@example.com', 40.90),
('Eva', 'Garcia', '321 Walnut St', '13579', 'CA', '555-123-2222', 'eva.garcia@example.com', 5.30),
('Frank', 'Martinez', '654 Birch St', '24680', 'NY', '555-333-5555', 'frank.martinez@example.com', 6.40),
('Grace', 'Lopez', '987 Maple St', '98765', 'TX', '555-555-7777', 'grace.lopez@example.com', 10.20),
('Harry', 'Hernandez', '101 Oak St', '12345', 'FL', '555-777-9999', 'harry.hernandez@example.com', 30.60),
('Isabella', 'Gonzalez', '222 Pine St', '54321', 'WA', '555-999-1111', 'isabella.gonzalez@example.com', 0.00),
('Jack', 'Lee', '111 Elm St', '67890', 'CA', '555-111-3333', 'jack.lee@example.com', 0.00),
('Katherine', 'Clark', '444 Cedar St', '45678', 'NY', '555-333-6666', 'katherine.clark@example.com', 0.00),
('Luke', 'Scott', '777 Walnut St', '98765', 'TX', '555-555-8888', 'luke.scott@example.com', 0.00),
('Mia', 'Young', '888 Birch St', '12345', 'FL', '555-777-0000', 'mia.young@example.com', 0.00),
('Noah', 'Hall', '999 Maple St', '54321', 'WA', '555-999-2222', 'noah.hall@example.com', 0.00),
('Olivia', 'Lopez', '777 Pine St', '67890', 'CA', '555-111-4444', 'olivia.lopez@example.com', 0.00),
('Peter', 'King', '888 Elm St', '45678', 'NY', '555-333-7777', 'peter.king@example.com', 0.00),
('Quinn', 'Walker', '999 Cedar St', '98765', 'TX', '555-555-9999', 'quinn.walker@example.com', 0.00),
('Rachel', 'Young', '333 Walnut St', '12345', 'FL', '555-777-1111', 'rachel.young@example.com', 0.00),
('Samuel', 'Taylor', '444 Birch St', '54321', 'WA', '555-999-3333', 'samuel.taylor@example.com', 0.00),
('Sophia', 'Martin', '555 Maple St', '67890', 'CA', '555-111-5555', 'sophia.martin@example.com', 0.00),
('Thomas', 'Anderson', '666 Oak St', '45678', 'NY', '555-333-8888', 'thomas.anderson@example.com', 0.00),
('Uma', 'Parker', '777 Pine St', '98765', 'TX', '555-555-0000', 'uma.parker@example.com', 15.70),
('Vincent', 'Wright', '888 Elm St', '12345', 'FL', '555-777-2222', 'vincent.wright@example.com', 14.80),
('Wendy', 'Hill', '999 Cedar St', '54321', 'WA', '555-999-4444', 'wendy.hill@example.com', 35.60),
('Xavier', 'Cole', '111 Walnut St', '67890', 'CA', '555-111-6666', 'xavier.cole@example.com', 40.25),
('Yasmine', 'Hayes', '222 Oak St', '45678', 'NY', '555-333-9999', 'yasmine.hayes@example.com', 25.30),
('Zoe', 'Baker', '333 Pine St', '98765', 'TX', '555-555-1111', 'zoe.baker@example.com', 20.90),
('Adam', 'Gibson', '444 Elm St', '12345', 'FL', '555-777-3333', 'adam.gibson@example.com', 30.40),
('Bella', 'Adams', '555 Cedar St', '54321', 'WA', '555-999-5555', 'bella.adams@example.com', 15.75),
('Christopher', 'Moore', '777 Oak St', '12345', 'CA', '555-111-2222', 'christopher.moore@example.com', 0.00),
('Elizabeth', 'Lloyd', '888 Pine St', '54321', 'NY', '555-333-4444', 'elizabeth.lloyd@example.com', 10.80),
('Gabriel', 'Barnes', '999 Elm St', '67890', 'TX', '555-555-6666', 'gabriel.barnes@example.com', 14.90),
('Hannah', 'Reed', '111 Cedar St', '45678', 'FL', '555-777-8888', 'hannah.reed@example.com', 9.75),
('Ian', 'Foster', '222 Maple St', '98765', 'WA', '555-999-0000', 'ian.foster@example.com', 23.60),
('Jennifer', 'Murray', '333 Walnut St', '13579', 'CA', '555-123-2222', 'jennifer.murray@example.com', 0.00),
('Kevin', 'Coleman', '444 Oak St', '24680', 'NY', '555-333-5555', 'kevin.coleman@example.com', 13.20),
('Laura', 'Bryant', '555 Pine St', '98765', 'TX', '555-555-7777', 'laura.bryant@example.com', 4.40),
('Matthew', 'Nguyen', '666 Cedar St', '12345', 'FL', '555-777-9999', 'matthew.nguyen@example.com', 0.00),
('Natalie', 'Sullivan', '777 Maple St', '54321', 'WA', '555-999-1111', 'natalie.sullivan@example.com', 8.90),
('Oliver', 'Fisher', '888 Elm St', '67890', 'CA', '555-111-3333', 'oliver.fisher@example.com', 5.60),
('Patricia', 'Collins', '999 Birch St', '45678', 'NY', '555-333-6666', 'patricia.collins@example.com', 1.80),
('Ryan', 'Nguyen', '111 Walnut St', '98765', 'TX', '555-555-8888', 'ryan.nguyen@example.com', 15.25),
('Sarah', 'Graham', '222 Oak St', '12345', 'FL', '555-777-0000', 'sarah.graham@example.com', 15.30),
('Tyler', 'Chapman', '333 Pine St', '54321', 'WA', '555-999-2222', 'tyler.chapman@example.com', 55.60);


INSERT INTO order_details (user_id, drink_id, topping_id, size, sugar_level, substitution_id, total_drink_count, total_price, order_date) VALUES
(1, 5, 1, 'Medium', 'Regular', NULL, 1, 4.99, '2024-04-02'),
(8, 22, NULL, 'Large', 'Extra', NULL, 1, 6.99, '2024-03-30'),
(15, 33, 3, 'Small', 'Less', NULL, 1, 3.99, '2022-05-12'),
(27, 13, 2, 'Medium', 'Extra', NULL, 1, 1.99, '2024-01-07'),
(40, 17, NULL, 'Small', 'Regular', 4, 1, 3.99, '2023-08-23');
