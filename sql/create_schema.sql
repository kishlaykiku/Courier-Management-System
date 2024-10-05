CREATE DATABASE IF NOT EXISTS courmgmtsys;

USE courmgmtsys;


-- Defined table for user information
CREATE TABLE User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(20) NOT NULL,
    Address TEXT NOT NULL
);

-- Defined table for courier information
CREATE TABLE Courier (
    CourierID INT PRIMARY KEY AUTO_INCREMENT,
    SenderName VARCHAR(255) NOT NULL,
    SenderAddress TEXT NOT NULL,
    ReceiverName VARCHAR(255) NOT NULL,
    ReceiverAddress TEXT NOT NULL,
    Weight DECIMAL(5,2) NOT NULL CHECK (Weight > 0),
    Status VARCHAR(50) NOT NULL,
    TrackingNumber VARCHAR(20) NOT NULL UNIQUE,
    DeliveryDate DATE
);

-- Defined table for courier services
CREATE TABLE CourierServices (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceName VARCHAR(100) NOT NULL,
    Cost DECIMAL(8,2) NOT NULL CHECK (Cost >= 0)
);

-- Defined table for employee information
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    ContactNumber VARCHAR(20) NOT NULL,
    Role VARCHAR(50),
    Salary DECIMAL(10,2) CHECK (Salary >= 0)
);

-- Defined table for location information
CREATE TABLE Location (
    LocationID INT PRIMARY KEY AUTO_INCREMENT,
    LocationName VARCHAR(100) NOT NULL,
    Address TEXT NOT NULL
);

-- Defined table for payment information
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    CourierID INT,
    LocationID INT,
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount >= 0),
    PaymentDate DATE NOT NULL,
    FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

SELECT * FROM User;
SELECT * FROM Courier;
SELECT * FROM CourierServices;
SELECT * FROM Employee;
SELECT * FROM Location;
SELECT * FROM Payment;