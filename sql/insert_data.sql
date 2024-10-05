-- Inserting into User Table
INSERT INTO User (Name, Email, Password, ContactNumber, Address)
VALUES
('John Doe', 'john.doe@example.com', 'pass123', '123-456-7890', '123 Elm Street'),
('Jane Smith', 'jane.smith@example.com', 'pass456', '987-654-3210', '456 Oak Avenue'),
('Alice Johnson', 'alice.johnson@example.com', 'alice123', '555-123-6789', '789 Pine Road'),
('Bob Williams', 'bob.williams@example.com', 'bob456', '111-222-3333', '321 Birch Lane'),
('Charlie Brown', 'charlie.brown@example.com', 'charlie789', '222-333-4444', '654 Cedar Boulevard'),
('David Jones', 'david.jones@example.com', 'david123', '333-444-5555', '987 Maple Way'),
('Eva Wilson', 'eva.wilson@example.com', 'eva456', '444-555-6666', '159 Spruce Drive'),
('Frank White', 'frank.white@example.com', 'frank789', '555-666-7777', '753 Fir Crescent'),
('Grace Lee', 'grace.lee@example.com', 'grace123', '666-777-8888', '852 Redwood Street'),
('Hannah King', 'hannah.king@example.com', 'hannah456', '777-888-9999', '951 Walnut Park');

-- Inserting into Courier Table
INSERT INTO Courier (SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate)
VALUES
('John Doe', '123 Elm Street', 'Jane Smith', '456 Oak Avenue', 1.25, 'In Transit', 'TRK12345', '2024-10-01'),
('Jane Smith', '456 Oak Avenue', 'Bob Williams', '321 Birch Lane', 2.50, 'Delivered', 'TRK12346', '2024-09-28'),
('Alice Johnson', '789 Pine Road', 'Charlie Brown', '654 Cedar Boulevard', 0.75, 'Pending', 'TRK12347', NULL),
('Bob Williams', '321 Birch Lane', 'David Jones', '987 Maple Way', 5.00, 'In Transit', 'TRK12348', '2024-10-02'),
('Charlie Brown', '654 Cedar Boulevard', 'Eva Wilson', '159 Spruce Drive', 3.25, 'Delivered', 'TRK12349', '2024-09-29'),
('David Jones', '987 Maple Way', 'Frank White', '753 Fir Crescent', 4.00, 'In Transit', 'TRK12350', '2024-10-03'),
('Eva Wilson', '159 Spruce Drive', 'Grace Lee', '852 Redwood Street', 1.75, 'Cancelled', 'TRK12351', NULL),
('Frank White', '753 Fir Crescent', 'Hannah King', '951 Walnut Park', 6.25, 'Delivered', 'TRK12352', '2024-09-30'),
('Grace Lee', '852 Redwood Street', 'John Doe', '123 Elm Street', 2.10, 'Pending', 'TRK12353', NULL),
('Hannah King', '951 Walnut Park', 'Alice Johnson', '789 Pine Road', 4.50, 'Delivered', 'TRK12354', '2024-09-27');

-- Inserting into CourierServices Table
INSERT INTO CourierServices (ServiceName, Cost)
VALUES
('Standard Shipping', 5.00),
('Express Shipping', 10.00),
('Next-Day Delivery', 20.00),
('International Shipping', 50.00),
('Overnight Shipping', 25.00),
('Same-Day Delivery', 15.00),
('Economy Shipping', 3.00),
('Priority Shipping', 12.50),
('Weekend Delivery', 18.00),
('Holiday Shipping', 30.00);

-- Inserting into Employee Table
INSERT INTO Employee (Name, Email, ContactNumber, Role, Salary)
VALUES
('Michael Scott', 'michael.scott@example.com', '101-202-3030', 'Manager', 50000.00),
('Dwight Schrute', 'dwight.schrute@example.com', '202-303-4040', 'Salesman', 40000.00),
('Jim Halpert', 'jim.halpert@example.com', '303-404-5050', 'Salesman', 40000.00),
('Pam Beesly', 'pam.beesly@example.com', '404-505-6060', 'Receptionist', 30000.00),
('Stanley Hudson', 'stanley.hudson@example.com', '505-606-7070', 'Salesman', 40000.00),
('Kevin Malone', 'kevin.malone@example.com', '606-707-8080', 'Accountant', 35000.00),
('Oscar Martinez', 'oscar.martinez@example.com', '707-808-9090', 'Accountant', 35000.00),
('Angela Martin', 'angela.martin@example.com', '808-909-1010', 'Accountant', 35000.00),
('Ryan Howard', 'ryan.howard@example.com', '909-101-2020', 'Intern', 20000.00),
('Kelly Kapoor', 'kelly.kapoor@example.com', '101-202-3031', 'Customer Service', 30000.00);

-- Inserting into Location Table
INSERT INTO Location (LocationName, Address)
VALUES
('New York Branch', '123 Broadway, New York, NY'),
('Los Angeles Branch', '456 Hollywood Blvd, Los Angeles, CA'),
('Chicago Branch', '789 Michigan Ave, Chicago, IL'),
('Houston Branch', '321 Main St, Houston, TX'),
('Phoenix Branch', '654 Central Ave, Phoenix, AZ'),
('Philadelphia Branch', '987 Market St, Philadelphia, PA'),
('San Antonio Branch', '159 Riverwalk, San Antonio, TX'),
('San Diego Branch', '753 Bay St, San Diego, CA'),
('Dallas Branch', '852 Elm St, Dallas, TX'),
('San Jose Branch', '951 Tech Park, San Jose, CA');

-- Inserting into Payment Table
INSERT INTO Payment (CourierID, LocationID, Amount, PaymentDate)
VALUES
(1, 1, 25.00, '2024-10-01'),
(2, 2, 50.00, '2024-09-28'),
(3, 3, 10.00, '2024-09-29'),
(4, 4, 30.00, '2024-10-02'),
(5, 5, 15.00, '2024-09-29'),
(6, 6, 40.00, '2024-10-03'),
(7, 7, 20.00, '2024-09-30'),
(8, 8, 60.00, '2024-09-30'),
(9, 9, 10.00, '2024-10-01'),
(10, 10, 25.00, '2024-09-27');