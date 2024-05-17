create database ShoesStore
go
use ShoesStore
go
CREATE TABLE Account (
    id INT PRIMARY KEY IDENTITY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phoneNumber VARCHAR(255) NOT NULL UNIQUE,
    role VARCHAR(50),
    enable BIT NOT NULL
);

CREATE TABLE Customer (
    id INT PRIMARY KEY IDENTITY,
    fullname NVARCHAR(255) NOT NULL,
    dateOfBirth DATE,
    address NVARCHAR(255),
    avata NVARCHAR(255),
    account_id INT,
    enabled BIT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Account(id)
);

CREATE TABLE Category (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(255) NOT NULL,
    description NVARCHAR(255)
);

CREATE TABLE Shoes (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(255) NOT NULL,
    description NVARCHAR(255),
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    enable BIT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE ImageProduct (
    id INT PRIMARY KEY IDENTITY,
    url VARCHAR(255) NOT NULL,
    shoes_id INT,
    FOREIGN KEY (shoes_id) REFERENCES Shoes(id)
);

CREATE TABLE Cart (
    id INT PRIMARY KEY IDENTITY,
    status NVARCHAR(50),
    create_at DATETIME DEFAULT GETDATE(),
    enable BIT NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

CREATE TABLE CartItem (
    cart_id INT,
    shoes_id INT,
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (cart_id, shoes_id),
    FOREIGN KEY (cart_id) REFERENCES Cart(id),
    FOREIGN KEY (shoes_id) REFERENCES Shoes(id)
);

CREATE TABLE [Order] (
    id INT PRIMARY KEY IDENTITY,
    customer_id INT,
    order_date DATETIME DEFAULT GETDATE(),
    total_amount DECIMAL(10, 2) NOT NULL,
    status NVARCHAR(50),
    total_quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

CREATE TABLE OrderItem (
    id INT PRIMARY KEY IDENTITY,
    order_id INT,
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    shoes_id INT,
    FOREIGN KEY (order_id) REFERENCES [Order](id),
    FOREIGN KEY (shoes_id) REFERENCES Shoes(id)
);
