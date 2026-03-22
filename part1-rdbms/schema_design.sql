-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    sales_rep_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    sales_rep_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERT SAMPLE DATA

INSERT INTO customers VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Neha', 'Pune'),
(3, 'Raj', 'Mumbai'),
(4, 'Simran', 'Delhi'),
(5, 'Karan', 'Bangalore');

INSERT INTO products VALUES
(101, 'Laptop', 60000),
(102, 'Phone', 30000),
(103, 'Headphones', 2000),
(104, 'Keyboard', 1500),
(105, 'Mouse', 800);

INSERT INTO sales_reps VALUES
(1, 'Ravi'),
(2, 'Sita'),
(3, 'Arjun'),
(4, 'Meena'),
(5, 'Vikram');

INSERT INTO orders VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(3, 3, 1, '2024-01-03'),
(4, 4, 3, '2024-01-04'),
(5, 5, 2, '2024-01-05');

INSERT INTO order_items VALUES
(1, 1, 101, 1),
(2, 1, 103, 2),
(3, 2, 102, 1),
(4, 3, 104, 3),
(5, 4, 105, 5),
(6, 5, 101, 1),
(7, 5, 102, 2);
