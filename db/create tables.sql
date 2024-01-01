USE [TailorManagmentSystem]

CREATE TABLE dbo.customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    cust_name NVARCHAR(255),
    phone_number VARCHAR(20),
    email NVARCHAR(255)
);


CREATE TABLE dbo.customer_sizes (
    size_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    shoulder VARCHAR(20),
    waist VARCHAR(20),
    thigh VARCHAR(20),
    half_length VARCHAR(20),
    under_bust VARCHAR(20),
    upper_bust VARCHAR(20),
    skirt_length VARCHAR(20),
    trouser_length VARCHAR(20),
    dress_length VARCHAR(20),
    sleeves VARCHAR(20),
    round_arms VARCHAR(20),
    round_neck VARCHAR(20),
    wrist VARCHAR(20)
);


CREATE TABLE dbo.orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    size_id INT FOREIGN KEY REFERENCES customer_sizes(size_id),
    category VARCHAR(255),
    order_date DATE,
    delivery_date DATE,
    advance_payment DECIMAL(10, 2),
    discount DECIMAL(5, 2),
    full_payment DECIMAL(10, 2)
);


