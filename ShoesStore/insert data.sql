-- Insert data into Account table
INSERT INTO Account (username, password, email, phoneNumber, role, enable) VALUES
('john_doe', 'password123', 'john.doe@example.com', '1234567890', 'customer', 1),
('jane_smith', 'password456', 'jane.smith@example.com', '0987654321', 'customer', 1),
('admin_user', 'adminpass', 'admin@example.com', '1122334455', 'admin', 1),
('alice_jones', 'alicepass', 'alice.jones@example.com', '1231231234', 'customer', 1),
('bob_brown', 'bobpass', 'bob.brown@example.com', '3213214321', 'customer', 1);

-- Insert data into Customer table
INSERT INTO Customer (fullname, dateOfBirth, address, avata, account_id, enabled) VALUES
('John Doe', '1990-01-01', '123 Elm Street', 'john_avatar.jpg', 1, 1),
('Jane Smith', '1992-02-02', '456 Oak Street', 'jane_avatar.jpg', 2, 1),
('Alice Jones', '1985-03-03', '789 Pine Street', 'alice_avatar.jpg', 4, 1),
('Bob Brown', '1988-04-04', '321 Maple Street', 'bob_avatar.jpg', 5, 1);

-- Insert data into Category table
INSERT INTO Category (name, description) VALUES
('Running Shoes', 'Shoes designed for running'),
('Training Shoes', 'Shoes designed for various types of training'),
('Casual Shoes', 'Comfortable shoes for everyday wear');

-- Insert data into Shoes table
INSERT INTO Shoes (name, description, quantity, price, enable, category_id) VALUES
('Nike Air Max 90', 'Classic design with a comfortable fit.', 50, 120.00, 1, 1),
('Adidas Ultraboost 21', 'High-performance running shoes.', 30, 180.00, 1, 1),
('Puma Suede Classic', 'Stylish and comfortable casual shoes.', 40, 70.00, 1, 3),
('Reebok Nano X1', 'Versatile training shoes for all workouts.', 25, 130.00, 1, 2),
('New Balance 574', 'Iconic design with a modern touch.', 35, 80.00, 1, 3),
('ASICS Gel-Kayano 27', 'Stability running shoes with great support.', 20, 160.00, 1, 1),
('Under Armour HOVR Phantom 2', 'Responsive running shoes with excellent cushioning.', 15, 140.00, 1, 1),
('Converse Chuck Taylor All Star', 'Classic high-top sneakers.', 45, 60.00, 1, 3),
('Vans Old Skool', 'Timeless skate shoes with a durable design.', 50, 65.00, 1, 3),
('Brooks Ghost 13', 'Comfortable running shoes for everyday runs.', 25, 130.00, 1, 1);

-- Insert data into ImageProduct table
INSERT INTO ImageProduct (url, shoes_id) VALUES
('nike_air_max_90.jpg', 1),
('adidas_ultraboost_21.jpg', 2),
('puma_suede_classic.jpg', 3),
('reebok_nano_x1.jpg', 4),
('new_balance_574.jpg', 5),
('asics_gel_kayano_27.jpg', 6),
('ua_hovr_phantom_2.jpg', 7),
('converse_chuck_taylor.jpg', 8),
('vans_old_skool.jpg', 9),
('brooks_ghost_13.jpg', 10);

-- Insert data into Cart table
INSERT INTO Cart (status, create_at, enable, customer_id) VALUES
('active', '2024-05-17 10:00:00', 1, 1),
('completed', '2024-05-16 11:00:00', 1, 2),
('active', '2024-05-15 12:00:00', 1, 3),
('completed', '2024-05-14 13:00:00', 1, 4),
('active', '2024-05-13 14:00:00', 1, 1);

-- Insert data into CartItem table
INSERT INTO CartItem (cart_id, shoes_id, quantity, price) VALUES
(1, 1, 2, 120.00),
(1, 3, 1, 70.00),
(2, 2, 1, 180.00),
(2, 5, 3, 80.00),
(3, 4, 2, 130.00),
(3, 6, 1, 160.00),
(4, 7, 1, 140.00),
(4, 8, 2, 60.00),
(5, 9, 1, 65.00),
(5, 10, 1, 130.00);

-- Insert data into Order table
INSERT INTO [Order] (customer_id, order_date, total_amount, status, total_quantity) VALUES
(1, '2024-05-10 10:00:00', 240.00, 'shipped', 3),
(2, '2024-05-09 11:00:00', 240.00, 'delivered', 4),
(3, '2024-05-08 12:00:00', 290.00, 'shipped', 3),
(4, '2024-05-07 13:00:00', 260.00, 'delivered', 3),
(1, '2024-05-06 14:00:00', 195.00, 'processing', 2);

-- Insert data into OrderItem table
INSERT INTO OrderItem (order_id, quantity, price, shoes_id) VALUES
(1, 2, 120.00, 1),
(1, 1, 70.00, 3),
(2, 1, 180.00, 2),
(2, 3, 80.00, 5),
(3, 2, 130.00, 4),
(3, 1, 160.00, 6),
(4, 1, 140.00, 7),
(4, 2, 60.00, 8),
(5, 1, 65.00, 9),
(5, 1, 130.00, 10);
