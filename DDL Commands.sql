--
-- File generated with SQLiteStudio v3.3.3 on Sun Dec 11 17:52:07 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Accounts
CREATE TABLE Accounts (AccountID NUMBER NOT NULL, CustomerID NUMBER NOT NULL, PaymentID NUMBER NOT NULL, Account_Name VARCHAR2 (15) NOT NULL, Discounts Number NOT NULL, CONSTRAINT PK_Accounts PRIMARY KEY (AccountID), FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID), FOREIGN KEY (PaymentID) REFERENCES Payment (PaymentID));
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (1, 100, 10, 'KrazyJoe', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (2, 101, 11, 'Liz123', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (3, 102, 12, 'kiss-my-axe', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (4, 103, 13, 'BigD', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (5, 104, 14, 'FunnyCatVidz', 0.1);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (6, 105, 15, 'GenZWarrior', 0.05);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (7, 106, 16, 'not_funny', 0.2);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (8, 107, 17, 'Spencerkool', 0.1);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (9, 108, 18, 'Ricardosnack', 0.1);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (10, 109, 19, 'thanoslefthan', 0.05);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (11, 110, 20, 'kevin_flush', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (12, 111, 21, 'Soccer_Goal-y', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (13, 112, 22, '-amicoolyet', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (14, 113, 23, 'Layne', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (15, 114, 24, 'catmom', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (16, 115, 25, 'LeftOnRead', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (17, 116, 26, 'Mr. Right ', 0.2);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (18, 117, 27, 'Mrs. Right ', 0.25);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (19, 118, 28, 'ALLCAPS', 0.05);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (20, 119, 29, 'thegodfather', 0.05);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (21, 120, 30, 'KanyeEast', 0.1);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (22, 121, 31, 'dogdad', 0.1);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (23, 122, 32, 'Seriesprofessor', 0.05);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (24, 123, 33, 'SQLCrasher', 0);
INSERT INTO Accounts (AccountID, CustomerID, PaymentID, Account_Name, Discounts) VALUES (25, 124, 34, 'No-Feet-Pics', 0.2);

-- Table: Barista
CREATE TABLE Barista (BaristaID NUMBER NOT NULL, PaycodeZ VARCHAR2 (50) NOT NULL, Reports_To VARCHAR2 (20) NOT NULL, FOREIGN KEY (BaristaID) REFERENCES Employee (EmployeeID));
INSERT INTO Barista (BaristaID, PaycodeZ, Reports_To) VALUES (1004, '$17.50', 'Glenn Evans');
INSERT INTO Barista (BaristaID, PaycodeZ, Reports_To) VALUES (1005, '$17.25', 'Glenn Evans');
INSERT INTO Barista (BaristaID, PaycodeZ, Reports_To) VALUES (1006, '$17.45', 'Ricco Romero');
INSERT INTO Barista (BaristaID, PaycodeZ, Reports_To) VALUES (1007, '$17.65', 'Ricco Romero');
INSERT INTO Barista (BaristaID, PaycodeZ, Reports_To) VALUES (1008, '$17.75', 'Ricco Romero');

-- Table: Cashier
CREATE TABLE Cashier (CashierID NUMBER NOT NULL, PaycodeY VARCHAR2 (50) NOT NULL, Reports_To VARCHAR2 (20) NOT NULL, FOREIGN KEY (CashierID) REFERENCES Employee (EmployeeID));
INSERT INTO Cashier (CashierID, PaycodeY, Reports_To) VALUES (1000, '$16.50', 'Glenn Evans');
INSERT INTO Cashier (CashierID, PaycodeY, Reports_To) VALUES (1001, '$16.50', 'Glenn Evans');
INSERT INTO Cashier (CashierID, PaycodeY, Reports_To) VALUES (1002, '$16.50', 'Glenn Evans');
INSERT INTO Cashier (CashierID, PaycodeY, Reports_To) VALUES (1003, '$16.75', 'Ricco Romero');

-- Table: Coffee_Shop
CREATE TABLE Coffee_Shop
(
StoreID NUMBER NOT NULL,
Store Address VARCHAR2(100) NOT NULL,
Store_Phone_Number VARCHAR2(75) NOT NULL,
CONSTRAINT PK_Coffee_Shop PRIMARY KEY (StoreID)
);
INSERT INTO Coffee_Shop (StoreID, Store, Store_Phone_Number) VALUES (1, '1928 Mary Lane Dr, San Diego, CA, 92115, United States', '6193903870');
INSERT INTO Coffee_Shop (StoreID, Store, Store_Phone_Number) VALUES (2, '7203 E Falls View Drive, San Diego, CA, 92109, United States', '8580123365');

-- Table: Customer
CREATE TABLE Customer (CustomerID NUMBER NOT NULL, Customer_Name VARCHAR2 (40) NOT NULL, Customer_Email VARCHAR2 (40) NOT NULL, Customer_Phone_Number VARCHAR2 (25) NOT NULL, CONSTRAINT PK_Customer PRIMARY KEY (CustomerID));
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (100, 'Joseph Thomas', 'josephthomas@gmail.com', '8054987720');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (101, 'Elizabeth Jones', 'lizjones@gmail.com', '8187023345');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (102, 'Kristen Murray', 'kristenm@yahoo.com', '8586793478');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (103, 'Jack Black', 'jackblack@46.net', '6148023349');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (104, 'Steven Smith', 'ssmith78@sdsu.edu', '8054053894');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (105, 'Julia Mueller', 'juliamueller@gmail.com', '3218490038');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (106, 'Elise Bocca', 'elisebocca@gmail.com', '2214856790');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (107, 'Vini Immer', 'viniimmer@yahoo.com', '8586790034');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (108, 'Lauren Lawless', 'lauren@lawless.net', '7803345789');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (109, 'Mya Tobias', 'myatobias@gmail.com', '3829930044');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (110, 'Dirk Mont', 'dirkmont589@sdsu.edu', '5639573399');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (111, 'Dylan Ishino', 'dylanishino@gmail.com', '6394783399');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (112, 'Ariana Vigna', 'arianav234@sdsu.edu', '7834592739');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (113, 'Kendall Bolger', 'kendallbolger@gmail.com', '2737492734');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (114, 'Kevin Durant', 'kevin@basketball.org', '8390478833');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (115, 'Ashley Toretta', 'ashleytoretta@yahoo.com', '1293048803');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (116, 'Bryce Howard', 'brycehoward24@gmail.com', '3890481290');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (117, 'Natalie McCullah', 'natemccuah@yahoo.com', '3548903722');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (118, 'Howard Forehan', 'howardf29@gmail.com', '1283940933');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (119, 'Trent Walker', 'trentrunner@gmail.com', '1283828349');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (120, 'Ben Wieboldt', 'Benw456@yahoo.com', '5749304850');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (121, 'Susan Vinik', 'susan@vinik.net', '5285910921');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (122, 'Dory Peters', 'peterdory7748@sdsu.edu', '1234327869');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (123, 'Madison Melito', 'maddie23melito@gmail.com', '2346548769');
INSERT INTO Customer (CustomerID, Customer_Name, Customer_Email, Customer_Phone_Number) VALUES (124, 'Scott Mathews', 'scottymatty@gmail.com', '9876567654');

-- Table: Employee
CREATE TABLE Employee (EmployeeID NUMBER NOT NULL, Employee_Name VARCHAR2 (50) NOT NULL, Email VARCHAR2 (50) NOT NULL, Phone VARCHAR2 (50) NOT NULL, CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID));
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1009, 'Glenn Evans', 'Dancerdancer@gmail.com', '3106789009');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1010, 'Ricco Romero', 'Wannabebackupsinger@aol.com', '6269900909');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1004, 'Daniel Kruze', 'Kruzeorlose@msn.com', '7609647333');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1005, 'Ruben Lopez', 'Locopoco1001@yahoo.com', '8588100310');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1006, 'Noah Pierce', 'Pieceofnoah300@gmail.com', '4566780001');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1007, 'Ben Marshal', 'GivemeaA@sdsu.edu', '6789115555');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1008, 'Lola Pearl', 'DoggiesRulez@snacks.com', '6198900234');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1000, 'Jayme Santos', 'LivingthevidaSantos@gmail.com', '6199090987');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1001, 'Cesar Gonzales ', 'Soccer4life@worldcup.com', '5701234567');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1002, 'Jezzelin Lopez ', 'BarbieGymGurl@gmail.com', '8013456785');
INSERT INTO Employee (EmployeeID, Employee_Name, Email, Phone) VALUES (1003, 'Ebony Sims', 'GreenTreelover@msn.com', '7654321098');

-- Table: HR
CREATE TABLE HR (StoreID NUMBER NOT NULL, EmployeeID NUMBER NOT NULL, Contract_Number NUMBER NOT NULL, FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID), FOREIGN KEY (StoreID) REFERENCES Coffee_Shop (StoreID));
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (1, 1009, 10023);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (2, 1010, 10024);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (1, 1004, 10025);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (1, 1005, 10026);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (2, 1006, 10027);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (1, 1007, 10028);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (2, 1008, 10029);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (2, 1000, 10030);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (1, 1001, 10031);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (2, 1002, 10032);
INSERT INTO HR (StoreID, EmployeeID, Contract_Number) VALUES (1, 1003, 10033);

-- Table: Items
CREATE TABLE Items (ItemID NUMBER NOT NULL, OrderID NUMBER NOT NULL, StoreID NUMBER NOT NULL, Item_Name VARCHAR2 (20) NOT NULL, Item_Quantity Number NOT NULL, Item_Type_Name VARCHAR2 (30) NOT NULL, CONSTRAINT PK_Items PRIMARY KEY (ItemID), FOREIGN KEY (OrderID) REFERENCES Orders (OrderID), FOREIGN KEY (StoreID) REFERENCES Coffee_Shop (StoreID));
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (200, 40, 1, 'Drip Coffee', 21, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (201, 39, 2, 'Apple Pastry', 12, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (202, 38, 2, 'Milk', 11, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (203, 37, 1, 'Veranda Blend ', 33, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (204, 36, 1, 'Decaf Pikeplace', 55, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (205, 35, 1, 'Flat White', 44, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (206, 34, 1, 'HoneyFlatWhite', 33, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (207, 33, 1, 'Caramel Brulee Latte', 22, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (208, 32, 2, 'Chestnut Latte', 23, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (209, 31, 1, 'Sugar Latte', 21, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (210, 30, 1, 'Cinnamon Dolce Latte', 43, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (211, 29, 1, 'Blonde Vanilla Latte', 67, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (212, 28, 1, 'Apple Crisp ', 65, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (213, 27, 1, 'Water', 44, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (214, 26, 1, 'Cookie', 48, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (215, 25, 2, 'Peppermint Mocha ', 92, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (216, 24, 1, 'White Cholate Mocha', 18, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (217, 23, 2, 'Grilled Cheese', 11, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (218, 22, 1, 'Snickerdoodle Cookie', 13, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (219, 21, 1, 'Choco Cookie', 14, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (220, 20, 2, 'Choco Muffin', 16, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (221, 19, 1, 'Vanila Scone', 13, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (222, 18, 2, 'Avocado Toast', 66, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (223, 17, 2, 'Coffee Cake', 55, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (224, 16, 1, 'Lemon Loaf', 33, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (225, 15, 1, 'Pumpkin Loaf', 34, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (226, 14, 2, 'Blueberry Muffin', 68, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (227, 13, 1, 'Espresso Shot', 51, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (228, 12, 2, 'Caffe Americano', 52, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (229, 11, 2, 'Caffe Latte', 59, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (230, 10, 2, 'Cappuccino', 65, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (231, 9, 2, 'Caffe Misto ', 67, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (232, 8, 1, 'ExpressoMachiato', 68, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (233, 7, 2, 'Caffe Mocha ', 47, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (234, 6, 1, 'White Mocha ', 86, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (235, 5, 1, 'Caramel Macchiato', 22, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (236, 4, 1, 'Pumpkin Spice Latte ', 21, 'Drink');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (237, 3, 2, 'Muffin', 28, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (238, 2, 2, 'Omlete', 29, 'Food');
INSERT INTO Items (ItemID, OrderID, StoreID, Item_Name, Item_Quantity, Item_Type_Name) VALUES (239, 1, 2, 'Breakfast Burrito', 28, 'Food');

-- Table: Manager
CREATE TABLE Manager (ManagerID NUMBER NOT NULL, PaycodeX VARCHAR2 (50) NOT NULL, FOREIGN KEY (ManagerID) REFERENCES Employee (EmployeeID));
INSERT INTO Manager (ManagerID, PaycodeX) VALUES (1009, '$24.25');
INSERT INTO Manager (ManagerID, PaycodeX) VALUES (1010, '$25.24');

-- Table: Orders
CREATE TABLE Orders (OrderID NUMBER NOT NULL, CustomerID NUMBER NOT NULL, CashierID NUMBER NOT NULL, ItemID NUMBER NOT NULL, StoreID Number NOT NULL, Order_Quantity NUMBER NOT NULL, Order_Date VARCHAR2 (30) NOT NULL, Order_Time TIME (30) NOT NULL, Order_Type VARCHAR2 (75) NOT NULL, CONSTRAINT PK_Orders PRIMARY KEY (OrderID), FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID), FOREIGN KEY (ItemID) REFERENCES Items (ItemID), FOREIGN KEY (CashierID) REFERENCES Cashier (CashierID), FOREIGN KEY (StoreID) REFERENCES Coffee_Shop (StoreID));
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (1, 108, 1000, 239, 1, 4, '1/10/2022', '6:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (2, 101, 1003, 238, 2, 2, '1/9/2022', '8:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (3, 103, 1001, 237, 2, 4, '1/10/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (4, 107, 1003, 236, 1, 4, '1/11/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (5, 114, 1002, 235, 1, 5, '1/11/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (6, 114, 1003, 234, 1, 1, '1/12/2022', '11:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (7, 105, 1001, 233, 1, 2, '1/13/2022', '12:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (8, 120, 1001, 232, 1, 1, '1/10/2022', '9:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (9, 103, 1000, 231, 2, 1, '1/14/2022', '8:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (10, 119, 1003, 230, 1, 3, '1/15/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (11, 119, 1002, 229, 1, 1, '1/10/2022', '10:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (12, 104, 1003, 228, 1, 1, '1/9/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (13, 119, 1003, 227, 1, 3, '1/10/2022', '11:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (14, 122, 1003, 226, 1, 3, '1/11/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (15, 101, 1000, 225, 1, 2, '1/11/2022', '6:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (16, 104, 1000, 224, 2, 1, '1/12/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (17, 114, 1003, 223, 1, 3, '1/13/2022', '8:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (18, 112, 1000, 222, 2, 5, '1/10/2022', '9:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (19, 119, 1003, 221, 1, 5, '1/14/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (20, 117, 1003, 220, 1, 5, '1/15/2022', '8:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (21, 102, 1001, 219, 2, 1, '1/10/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (22, 118, 1002, 218, 1, 5, '1/9/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (23, 116, 1002, 217, 2, 3, '1/10/2022', '7:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (24, 111, 1003, 216, 2, 5, '1/11/2022', '8:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (25, 112, 1001, 215, 1, 4, '1/11/2022', '9:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (26, 102, 1003, 214, 1, 4, '1/12/2022', '10:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (27, 110, 1001, 213, 2, 4, '1/13/2022', '11:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (28, 100, 1003, 212, 1, 3, '1/10/2022', '12:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (29, 119, 1000, 211, 2, 5, '1/14/2022', '9:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (30, 112, 1003, 210, 2, 1, '1/15/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (31, 108, 1003, 209, 2, 5, '1/10/2022', '10:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (32, 108, 1002, 208, 2, 1, '1/9/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (33, 100, 1002, 207, 1, 1, '1/10/2022', '10:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (34, 100, 1002, 206, 2, 4, '1/11/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (35, 113, 1003, 205, 1, 4, '1/11/2022', '12:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (36, 101, 1002, 204, 1, 1, '1/12/2022', '6:00', 'Online');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (37, 120, 1003, 203, 1, 4, '1/13/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (38, 104, 1000, 202, 2, 3, '1/10/2022', '8:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (39, 106, 1003, 201, 2, 3, '1/14/2022', '9:00', 'In-Store');
INSERT INTO Orders (OrderID, CustomerID, CashierID, ItemID, StoreID, Order_Quantity, Order_Date, Order_Time, Order_Type) VALUES (40, 103, 1001, 200, 2, 2, '1/15/2022', '10:00', 'In-Store');

-- Table: Payment
CREATE TABLE Payment (PaymentID NUMBER NOT NULL, OrderID NUMBER NOT NULL, Payment_Type VARCHAR2 (20) NOT NULL, Subtotal Number NOT NULL, Tip_Amount Number NOT NULL, Total Number NOT NULL, Time_of_Purchase VARCHAR2 (8) NOT NULL, Date_of_Purchase VARCHAR2 (10) NOT NULL, CONSTRAINT PK_Payment PRIMARY KEY (PaymentID), FOREIGN KEY (OrderID) REFERENCES Orders (OrderID));
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (10, 1, 'Card', 10, 2, 12, '12:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (11, 2, 'Cash', 11, 3, 14, '9:00:00', '1/9/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (12, 3, 'Cash', 41, 1, 42, '6:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (13, 4, 'Cash', 24, 5, 29, '9:00:00', '1/11/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (14, 5, 'Card', 15, 3, 18, '8:00:00', '1/11/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (15, 6, 'Card', 5, 1, 24, '10:00:00', '1/12/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (16, 7, 'Cash', 6, 3, 9, '11:00:00', '1/13/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (17, 8, 'Card', 7, 46, 53, '8:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (18, 9, 'Cash', 8, 7, 15, '10:00:00', '1/14/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (19, 10, 'Card', 10, 8, 18, '6:00:00', '1/15/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (20, 11, 'Cash', 5, 4, 24, '11:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (21, 12, 'Card', 4, 2, 6, '12:00:00', '1/9/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (22, 13, 'Cash', 5, 4, 29, '12:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (23, 14, 'Cash', 6, 7, 13, '6:00:00', '1/11/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (24, 15, 'Cash', 6, 75, 24, '6:00:00', '1/11/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (25, 16, 'Card', 6, 2, 8, '8:00:00', '1/12/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (26, 17, 'Card', 6, 4, 10, '10:00:00', '1/13/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (27, 18, 'Cash', 65, 6, 71, '6:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (28, 19, 'Card', 54, 3, 57, '8:00:00', '1/14/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (29, 20, 'Cash', 4, 6, 46, '8:00:00', '1/15/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (30, 21, 'Card', 3, 2, 5, '6:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (31, 22, 'Cash', 20, 4, 24, '9:00:00', '1/9/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (32, 23, 'Card', 4, 6, 10, '9:00:00', '1/10/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (33, 24, 'Cash', 4, 7, 24, '11:00:00', '1/11/2022');
INSERT INTO Payment (PaymentID, OrderID, Payment_Type, Subtotal, Tip_Amount, Total, Time_of_Purchase, Date_of_Purchase) VALUES (34, 25, 'Cash', 6, 5, 11, '12:00:00', '1/11/2022');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
