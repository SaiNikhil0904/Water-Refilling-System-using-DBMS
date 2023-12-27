#Table for Customer Entity: 
CREATE TABLE `dbms_project`.`tblcustomer` (
  `C_Id` INT NOT NULL AUTO_INCREMENT, `C_Name` VARCHAR(45) NOT NULL, `C_Address` VARCHAR(45) NOT NULL, `C_Contact_Number` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`C_Id`))
ENGINE = InnoDB;

#Table for Product Entity:

CREATE TABLE `dbms_project`.`tblproduct` (
  `P_Id` INT NOT NULL AUTO_INCREMENT, `P_Name` VARCHAR(45) NOT NULL, `P_Category` VARCHAR(45) NOT NULL, `P_Refill_Price` FLOAT NOT NULL, `Quantity` INT(11) NOT NULL, `P_Discount` FLOAT NOT NULL, `P_Price` FLOAT NOT NULL,
  PRIMARY KEY (`P_Id`));

#Table for Container Entity: 

CREATE TABLE `dbms_project`.`tblcontainer` (
  `Toc_Id` INT(11) NOT NULL AUTO_INCREMENT, `Containers_ Name` VARCHAR(100) NOT NULL, `Quantity` INT(11) NOT NULL, `ToC_Unit_Price` FLOAT NOT NULL,
  PRIMARY KEY (`idtblcontainer`));

#Table for Employee Entity:

CREATE TABLE `dbms_project`.`tblemployee` (
  `E_Id` INT NOT NULL AUTO_INCREMENT, `E_Name` VARCHAR(45) NOT NULL,
  `E_Age` INT NOT NULL, `E_Email` VARCHAR(45) NOT NULL,
  `E_Address` VARCHAR(45) NOT NULL, `E_Contact_No` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`E_Id`));

#Table for Payment Entity:

CREATE TABLE `dbms_project`.`tblpayment` (
  `Pay_Id` INT NOT NULL AUTO_INCREMENT, `P_Id` INT NOT NULL, `C_Id` INT NOT NULL,
  `Quantity` INT(11) NOT NULL, `P_Price` FLOAT NOT NULL, `Pay_Date_Order` DATE NOT NULL,
  PRIMARY KEY (`Pay_Id`));

#Table for Transaction Entity:

CREATE TABLE `dbms_project`.`tbltransaction` (
`T_Id` INT NOT NULL AUTO_INCREMENT, `C_Id` INT NOT NULL, `Pay_Id` INT NOT NULL, `P_Price` FLOAT NOT NULL, `T_Date` DATE NOT NULL,
  PRIMARY KEY (`T_Id`));

#Table for Delivery Entity:

CREATE TABLE `dbms_project`.`tbldelivery` (
  `D_Id` INT NOT NULL AUTO_INCREMENT, `C_Id` INT NOT NULL, `T_Id` INT NOT NULL, `P_Name` VARCHAR(45) NOT NULL, `Date_of_Delivery` DATE NOT NULL,
  `Delivery_Man` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`D_Id`));

#Values
#Values in Customer Entity:

INSERT INTO `dbms_project`.`tblcustomer` (`C_Id`, `C_Name`, `C_Address`, `C_Contact_Number`) VALUES ('101', 'chris grey', 'aguisan', '9461243372');
INSERT INTO `dbms_project`.`tblcustomer` (`C_Id`, `C_Name`, `C_Address`, `C_Contact_Number`) VALUES ('102', 'mark john', 'talaban', '9368787217');
INSERT INTO `dbms_project`.`tblcustomer` (`C_Id`, `C_Name`, `C_Address`, `C_Contact_Number`) VALUES ('103', 'kim paterno ', 'carabalan', '9356484858,1234567872');
INSERT INTO `dbms_project`.`tblcustomer` (`C_Id`, `C_Name`, `C_Address`, `C_Contact_Number`) VALUES ('104', 'rex notar', 'aguisan', '8486486945');
SELECT * FROM tblcustomer;

#Values in Product Entity:

INSERT INTO `dbms_project`.`tblproduct` (`P_Id`, `P_Name`, `P_Category`, `P_Refill_Price`, `Quantity`, `P_Discount`, `P_Price`) VALUES ('1015', 'round gallon', 'mineral', '60', '10', '60', '149.5');
INSERT INTO `dbms_project`.`tblproduct` (`P_Id`, `P_Name`, `P_Category`, `P_Refill_Price`, `Quantity`, `P_Discount`, `P_Price`) VALUES ('1016', 'gallon with faucet', 'mineral ', '80.5', '20', '30', '237');
INSERT INTO `dbms_project`.`tblproduct` (`P_Id`, `P_Name`, `P_Category`, `P_Refill_Price`, `Quantity`, `P_Discount`, `P_Price`) VALUES ('1017', 'round gallon', 'alkaline', '50', '5', '40', '145.5');
INSERT INTO `dbms_project`.`tblproduct` (`P_Id`, `P_Name`, `P_Category`, `P_Refill_Price`, `Quantity`, `P_Discount`, `P_Price`) VALUES ('1018', 'bottle', 'alkaline', '75.65', '18', '30', '83.445');
INSERT INTO `dbms_project`.`tblproduct` (`P_Id`, `P_Name`, `P_Category`, `P_Refill_Price`, `Quantity`, `P_Discount`, `P_Price`) VALUES ('1019', 'bottle container', 'ALKALINE', '100', '8', '70', '245.52');
SELECT * FROM tblproduct;

#Values in Container Entity:

INSERT INTO `dbms_project`.`tblcontainer` (`ToC_Id`, `Containers_Name`, `Quantity`, `ToC_Unit_Price`) VALUES ('1', 'round gallon', '10', '125.5');
INSERT INTO `dbms_project`.`tblcontainer` (`ToC_Id`, `Containers_Name`, `Quantity`, `ToC_Unit_Price`) VALUES ('2', 'gallon with faucet', '5', '180.65');
INSERT INTO `dbms_project`.`tblcontainer` (`ToC_Id`, `Containers_Name`, `Quantity`, `ToC_Unit_Price`) VALUES ('3', 'bottle', '20', '60.75');
INSERT INTO `dbms_project`.`tblcontainer` (`ToC_Id`, `Containers_Name`, `Quantity`, `ToC_Unit_Price`) VALUES ('4', 'bottle container', '13', '175.52');
SELECT * FROM tblcontainer;

#Values in Employee Entity:

INSERT INTO `dbms_project`.`tblemployee` (`E_Id`, `E_Name`, `E_Age`, `E_Email`, `E_Address`, `E_Contact_No`) VALUES ('50', 'aurelio laja', '21', 'aurelio32@gmail.com', 'binalbagan', '9126534451');
INSERT INTO `dbms_project`.`tblemployee` (`E_Id`, `E_Name`, `E_Age`, `E_Email`, `E_Address`, `E_Contact_No`) VALUES ('51', 'noel dalagan', '30', 'noeld@gmail.com', 'enclaro', '9214567999, 4567848767');
INSERT INTO `dbms_project`.`tblemployee` (`E_Id`, `E_Name`, `E_Age`, `E_Email`, `E_Address`, `E_Contact_No`) VALUES ('52', 'mario tanio', '30', 'mario34@gmail.com', 'binalbagan', '9461263436');
SELECT * FROM tblemployee;

#Values in Payment Entity:

INSERT INTO `dbms_project`.`tblpayment` (`Pay_Id`, `P_Id`, `C_Id`, `Quantity`, `P_Price`, `Pay_Date_Order`) VALUES ('1001', '1015', '101', '2', '299', '2021-02-01');
INSERT INTO `dbms_project`.`tblpayment` (`Pay_Id`, `P_Id`, `C_Id`, `Quantity`, `P_Price`, `Pay_Date_Order`) VALUES ('1002', '1016', '101', '3', '711', '2021-02-01');
INSERT INTO `dbms_project`.`tblpayment` (`Pay_Id`, `P_Id`, `C_Id`, `Quantity`, `P_Price`, `Pay_Date_Order`) VALUES ('1003', '1016', '102', '2', '474', '2021-02-02');
INSERT INTO `dbms_project`.`tblpayment` (`Pay_Id`, `P_Id`, `C_Id`, `Quantity`, `P_Price`, `Pay_Date_Order`) VALUES ('1004', '1019', '102', '1', '245.52', '2021-02-02');
INSERT INTO `dbms_project`.`tblpayment` (`Pay_Id`, `P_Id`, `C_Id`, `Quantity`, `P_Price`, `Pay_Date_Order`) VALUES ('1005', '1018', '103', '5', '417.225', '2021-03-03');
INSERT INTO `dbms_project`.`tblpayment` (`Pay_Id`, `P_Id`, `C_Id`, `Quantity`, `P_Price`, `Pay_Date_Order`) VALUES ('1006', '1017', '103', '1', '145.5', '2021-03-04');
SELECT * FROM tblpayment;

#Values in Transaction Entity:

INSERT INTO `dbms_project`.`tbltransaction` (`T_Id`, `C_Id`, `Pay_Id`, `P_Price`, `T_Date`) VALUES ('10101', '101', '1001', '299', '2021-02-01');
INSERT INTO `dbms_project`.`tbltransaction` (`T_Id`, `C_Id`, `Pay_Id`, `P_Price`, `T_Date`) VALUES ('10102', '102', '1003', '474', '2021-02-02');
INSERT INTO `dbms_project`.`tbltransaction` (`T_Id`, `C_Id`, `Pay_Id`, `P_Price`, `T_Date`) VALUES ('10103', '103', '1006', '145.5', '2021-03-04');
SELECT * FROM tbltransaction;

#Values in Delivery Entity:

INSERT INTO `dbms_project`.`tbldelivery` (`D_Id`, `C_Id`, `T_Id`, `P_Name`, `Date_of_Delivery`, `Delivery_Man`) VALUES ('200', '101', '10101', 'round gallon', '2021-02-04', 'mario tanio');
INSERT INTO `dbms_project`.`tbldelivery` (`D_Id`, `C_Id`, `T_Id`, `P_Name`, `Date_of_Delivery`, `Delivery_Man`) VALUES ('201', '102', '10102', 'gallon with faucet', '2021-02-05', 'bruno mars');
INSERT INTO `dbms_project`.`tbldelivery` (`D_Id`, `C_Id`, `T_Id`, `P_Name`, `Date_of_Delivery`, `Delivery_Man`) VALUES ('202', '103', '10103', 'round gallon', '2021-03-04', 'mario tanio');
SELECT * FROM tbldelivery;

#Solving problems using some functions: 
-- 1) SELECT STATEMENT USING DIFFERENT FUNCTIONS
-- Q 1.1: Display the list of customer payment details that have a balance more than 400.
SELECT Pay_Id, P_Id, C_Id, Quantity, P_Price FROM dbms_project.tblpayment WHERE P_Price > 400;

# Q 1.2: Display the maximum amount received.
SELECT Pay_Id, P_Id, C_Id, MAX(P_Price) FROM tblpayment;

-- 2) SELECT STATEMENT USING Sub Query
-- Q 2.1: Display the customer names who lived in Aguisan.
SELECT C_Name, C_Contact_Number FROM tblcustomer WHERE C_Address IN (SELECT C_Address FROM tblcustomer WHERE C_Address = 'aguisan');

-- 3) SELECT STATEMENT USING Count & Group Functions
-- Q 3.1: Display the name and the total number of Containers in tblproduct.
SELECT P_Name, COUNT(P_Name) AS "Total Number of Containers" FROM tblproduct GROUP BY P_Name;

# Q 3.2: Display the number of customers that transact on the address in tblcustomer.
SELECT C_Address, COUNT(C_Name) AS "Total number of customers" FROM tblcustomer GROUP BY C_Address;

# Q 3.3: Display the details of each total price in tblpayment in increasing order of price.
SELECT * FROM tblpayment ORDER BY P_Price;

-- 4) SELECT STATEMENT USING Different Joins
-- Q 4.1: Display the Customer name and the total cost of purchased products from tbltransaction.
SELECT C_Name, tbltransaction.P_Price FROM tblcustomer INNER JOIN tbltransaction ON tblcustomer.C_Id = tbltransaction.C_Id;

# Q 4.2: Display the delivery id, customer name in uppercase format, the list of delivery men, and the date when the product will deliver.
SELECT tbldelivery.D_Id, UPPER(C_Name), tbldelivery.Delivery_Man, tbldelivery.Date_of_Delivery FROM tblcustomer RIGHT JOIN tbldelivery ON tblcustomer.C_Id = tbldelivery.C_Id;

# Q 4.3: Display the customer’s name, customer number with the help of payment id.
SELECT C_Name, C_Contact_Number, tblpayment.Pay_Id FROM tblcustomer LEFT JOIN tblpayment ON tblcustomer.C_Id = tblpayment.C_Id;

-- 5) BETWEEN, IN, Not Between, NOT IN
# Q 5.1: Display details of records where the date of order in tblpayment is between ‘2021-02-02’ and ‘2021-03-04’.
SELECT * FROM tblpayment WHERE Pay_Date_Order BETWEEN '2021-02-02' AND '2021-03-04';

# Q 5.2: Display details of records where the date of delivery in tbldelivery is not between ‘2021-02-05’ and ‘2021-03-04’.
SELECT * FROM tbldelivery WHERE Date_of_Delivery NOT BETWEEN '2021-02-05' AND '2021-03-04';

