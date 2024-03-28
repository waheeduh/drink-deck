DROP DATABASE IF EXISTS userbase;
CREATE DATABASE userbase;



USE userbase;


CREATE TABLE Cold_Drinks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    sizes VARCHAR(100),
    sugar_level ENUM('Low', 'Medium', 'High'),
    ingredients TEXT
);


CREATE TABLE Toppings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Toppings (name, price) 
VALUES 
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


INSERT INTO Cold_Drinks (name, description, price, sizes, sugar_level, ingredients) 
VALUES 
('Iced Coffee', 'Refreshing iced coffee made with freshly brewed coffee, milk, and ice.', 3.99, 'Small, Medium, Large', 'Medium', 'Coffee, Milk, Ice'),
('Iced Latte', 'Chilled latte made with espresso, milk, and ice.', 4.49, 'Small, Medium, Large', 'Low', 'Espresso, Milk, Ice'),
('Lemonade', 'Classic lemonade made with freshly squeezed lemons and sugar.', 2.99, 'Regular, Large', 'High', 'Lemon Juice, Sugar, Water, Ice'),
('Strawberry Lemonade', 'Tangy lemonade infused with fresh strawberries.', 3.49, 'Regular, Large', 'Medium', 'Lemonade, Strawberry Puree, Ice'),
('Blueberry Smoothie', 'Creamy smoothie made with blueberries, yogurt, and honey.', 4.99, 'Small, Regular', 'Low', 'Blueberries, Yogurt, Honey, Ice'),
('Mango Smoothie', 'Refreshing smoothie made with ripe mangoes, yogurt, and ice.', 5.49, 'Small, Regular', 'Medium', 'Mangoes, Yogurt, Ice'),
('Berry Blast Smoothie', 'A burst of berry flavors with strawberries, blueberries, and raspberries.', 5.99, 'Regular, Large', 'Medium', 'Strawberries, Blueberries, Raspberries, Yogurt, Ice'),
('Red Bull', 'Energy drink to give you wings, with a fruity flavor.', 2.79, 'Regular', 'High', 'Carbonated Water, Sugar, Caffeine, Taurine, B-Vitamins'),
('Monster Energy', 'High-energy drink with a bold flavor.', 3.49, 'Regular', 'High', 'Carbonated Water, Sugar, Caffeine, Taurine, B-Vitamins'),
('Rockstar Energy', 'Power-packed energy drink with a tropical twist.', 3.29, 'Regular', 'High', 'Carbonated Water, Sugar, Caffeine, Taurine, B-Vitamins'),
('Dasani Spring Water', 'Refreshing spring water sourced from natural springs.', 1.49, 'Regular', 'Low', 'Spring Water'),
('Evian Spring Water', 'Premium natural spring water imported from France.', 2.99, 'Regular', 'Low', 'Spring Water'),
('Coca-Cola', 'Classic cola with a refreshing taste.', 1.99, 'Regular, Large', 'High', 'Carbonated Water, Sugar, Caramel Color, Phosphoric Acid, Natural Flavors, Caffeine'),
('Pepsi', 'Refreshing cola with a hint of citrus.', 1.99, 'Regular, Large', 'High', 'Carbonated Water, Sugar, Caramel Color, Phosphoric Acid, Natural Flavors, Caffeine'),
('Sprite', 'Crisp lemon-lime soda.', 1.79, 'Regular, Large', 'High', 'Carbonated Water, Sugar, Citric Acid, Natural Flavors, Sodium Citrate');




