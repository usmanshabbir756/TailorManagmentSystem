--INSERT CUSTOMER 
CREATE PROCEDURE InsertCustomer
    @cust_name VARCHAR(255),
    @phone_number VARCHAR(20),
    @email VARCHAR(255)
AS
BEGIN
    INSERT INTO customers (cust_name, phone_number, email)
    VALUES (@cust_name, @phone_number, @email);
END;


--UPDATE CUSTOMER
CREATE PROCEDURE UpdateCustomer
    @customer_id INT,
    @cust_name VARCHAR(255),
    @phone_number VARCHAR(20),
    @email VARCHAR(255)
AS
BEGIN
    UPDATE customers
    SET
        cust_name = @cust_name,
        phone_number = @phone_number,
        email = @email
    WHERE customer_id = @customer_id;
END;



--DELETE CUSTOMER
CREATE PROCEDURE DeleteCustomer
    @customer_id INT
AS
BEGIN
    DELETE FROM customers
    WHERE customer_id = @customer_id;
END;

--GET CUSTOMER BY ID
CREATE PROCEDURE GetCustomerByID
    @customer_id INT
AS
BEGIN
    SELECT *
    FROM customers
    WHERE customer_id = @customer_id;
END;

--GET ALL CUSTOMER
CREATE PROCEDURE GetAllCustomers
AS
BEGIN
    SELECT *
    FROM customers;
END;




-- Example: Execute InsertCustomer
EXEC DeleteCustomer 'John Doe', '123-456-7890', 'john.doe@example.com';




--SIZE INSERT

CREATE PROCEDURE InsertCustomerSize
    @customer_id INT,
    @shoulder VARCHAR(20),
    @waist VARCHAR(20),
    @thigh VARCHAR(20),
    @half_length VARCHAR(20),
    @under_bust VARCHAR(20),
    @upper_bust VARCHAR(20),
    @skirt_length VARCHAR(20),
    @trouser_length VARCHAR(20),
    @dress_length VARCHAR(20),
    @sleeves VARCHAR(20),
    @round_arms VARCHAR(20),
    @round_neck VARCHAR(20),
    @wrist VARCHAR(20)
AS
BEGIN
    INSERT INTO customer_sizes (customer_id, shoulder, waist, thigh, half_length, under_bust, upper_bust, skirt_length, trouser_length, dress_length, sleeves, round_arms, round_neck, wrist)
    VALUES (@customer_id, @shoulder, @waist, @thigh, @half_length, @under_bust, @upper_bust, @skirt_length, @trouser_length, @dress_length, @sleeves, @round_arms, @round_neck, @wrist);
END;



--SIZE UPDATE
CREATE PROCEDURE UpdateCustomerSize
    @size_id INT,
    @customer_id INT,
    @shoulder VARCHAR(20),
    @waist VARCHAR(20),
    @thigh VARCHAR(20),
    @half_length VARCHAR(20),
    @under_bust VARCHAR(20),
    @upper_bust VARCHAR(20),
    @skirt_length VARCHAR(20),
    @trouser_length VARCHAR(20),
    @dress_length VARCHAR(20),
    @sleeves VARCHAR(20),
    @round_arms VARCHAR(20),
    @round_neck VARCHAR(20),
    @wrist VARCHAR(20)
AS
BEGIN
    UPDATE customer_sizes
    SET customer_id = @customer_id,
        shoulder = @shoulder,
        waist = @waist,
        thigh = @thigh,
        half_length = @half_length,
        under_bust = @under_bust,
        upper_bust = @upper_bust,
        skirt_length = @skirt_length,
        trouser_length = @trouser_length,
        dress_length = @dress_length,
        sleeves = @sleeves,
        round_arms = @round_arms,
        round_neck = @round_neck,
        wrist = @wrist
    WHERE size_id = @size_id;
END;


--SIZE DELETE
CREATE PROCEDURE DeleteCustomerSize
    @size_id INT
AS
BEGIN
    DELETE FROM customer_sizes
    WHERE size_id = @size_id;
END;


--GET SIZE
CREATE PROCEDURE GetCustomerSize
    @size_id INT
AS
BEGIN
    SELECT *
    FROM customer_sizes
    WHERE size_id = @size_id;
END;




--ORDER INSERT
CREATE PROCEDURE InsertOrder
    @customer_id INT,
    @size_id INT,
    @category VARCHAR(255),
    @order_date DATE,
    @delivery_date DATE,
    @advance_payment DECIMAL(10, 2),
    @discount DECIMAL(5, 2),
    @full_payment DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO orders (customer_id, size_id, category, order_date, delivery_date, advance_payment, discount, full_payment)
    VALUES (@customer_id, @size_id, @category, @order_date, @delivery_date, @advance_payment, @discount, @full_payment);
END;


--UPDATE ORDER
CREATE PROCEDURE UpdateOrder
    @order_id INT,
    @customer_id INT,
    @size_id INT,
    @category VARCHAR(255),
    @order_date DATE,
    @delivery_date DATE,
    @advance_payment DECIMAL(10, 2),
    @discount DECIMAL(5, 2),
    @full_payment DECIMAL(10, 2)
AS
BEGIN
    UPDATE orders
    SET customer_id = @customer_id,
        size_id = @size_id,
        category = @category,
        order_date = @order_date,
        delivery_date = @delivery_date,
        advance_payment = @advance_payment,
        discount = @discount,
        full_payment = @full_payment
    WHERE order_id = @order_id;
END;


--DELETE ORDER
CREATE PROCEDURE DeleteOrder
    @order_id INT
AS
BEGIN
    DELETE FROM orders
    WHERE order_id = @order_id;
END;

--GET BY ID ORDER
CREATE PROCEDURE GetOrderById
    @order_id INT
AS
BEGIN
    SELECT *
    FROM dbo.orders
    WHERE order_id = @order_id;
END;

--GET ORDER BY CUSTOMER ID
CREATE PROCEDURE GetOrdersByCustomer
    @customer_id INT
AS
BEGIN
    SELECT *
    FROM dbo.orders
    WHERE customer_id = @customer_id;
END;
