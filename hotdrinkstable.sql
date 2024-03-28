
-- create the database
DROP DATABASE IF EXISTS userbase;
CREATE DATABASE userbase;

-- select the database
USE userbase;

CREATE TABLE hot_drinks
(
  drink_id      INT               PRIMARY KEY,
  drink_name   VARCHAR(50)     NOT NULL,
  drink_description VARCHAR(200),
  drink_price  DECIMAL(10,2)      NOT NULL,
  drink_size   VARCHAR(50)       NOT NULL,
  sugar_level  VARCHAR(50)

);

INSERT INTO hot_drinks (drink_id, drink_name, drink_description, drink_price, drink_size, sugar_level) VALUES 
(15, 'Hot coffee', 'freshly brewed coffee with your choice of milk and sweetness', 3.99, 'Medium', 'Low' ),
(16, 'Hot Chocolate', 'Creamy chocolaty sweet goodness topped with soft marshmellows', 5.99, 'Medium', 'Low'),
(17, 'Hot Apple Cider', 'A soothing blend of crisp apples and warm spices', 3.99, 'Small', 'Regular'),
(18, 'Adeni Chai', 'A traditional Yemeni tea infused with fragrant spices and brewed to perfection with your choice of milk', 5.99, 'Medium', 'High'),
(19, 'Punjabi Chai', 'A traditional Indian tea brewed with fragrant spices and rich black tea leaves', 6.99, 'Large', 'Regular'),
(20, 'Latte', 'Freshly brewed coffee with your choice of milk and syrup', 4.99, 'Medium', 'Low'),
(21, 'Matcha Latte', 'Vibrant matcha with creamy milk and sugar', 6.99, 'Large', 'Regular'),
(22, 'Fresh Ginger Tea', 'Soothing ginger tea with your choice of sweetner', 3.99, 'Small', 'low'),
(23, 'Gingerbread Latte', 'a comforting blend of rich espresso, steamed milk, and warm gingerbread spices, topped with a velvety foam', 4.99, 'Medium', 'low'),
(24, 'Caramal Machiatto','bold espresso, velvety steamed milk, and swirls of luscious caramel', 5.99, 'Medium', 'Regular'),
(25, 'Green Tea', 'Soothing green tea with your choice of sweetner', 2.99, 'Small', 'Low'),
(26, 'Black Tea', 'Soothing black tea with your choice of sweetner', 3.99, 'Medium', 'Regular'),
(27, 'Mocha Latte', 'Espresso with velvety steamed milk and decadent chocolate', 4.99, 'Medium', 'Low'),
(28, 'Hot Cranberry Cider', 'Soothing hot cranberry cider with your choice of sweetner', 3.99, 'Medium', 'Regular'),
(29,'Mint Tea', 'Refreshing mint tea with your choice of sweetner', 2.99, 'Small', 'Low');


CREATE TABLE subsitutions
(
  subsitution_id   INT PRIMARY KEY,
  subsitution_name   VARCHAR(50),          
  price     DECIMAL(10,2)   
 
);

INSERT INTO subsitutions (subsitution_id, subsitution_name, price) VALUES 
(0, 'Almond Milk',1.00),
(1, 'Coconut Milk',1.00),
(2, 'Oatmilk',1.00),
(3, 'Stevia',0.50),
(4, 'Honey',0.50),
(5, 'Maple Syrup', 0.50);

