#create a database (domain:Banking)
create database banking;

use banking;


#Create the Accounts table with 10 columns
CREATE TABLE Accounts (
    Account_ID VARCHAR(10) PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Account_Type VARCHAR(20),
    Balance DECIMAL(10, 2),
    Branch VARCHAR(50),
    Phone_Number VARCHAR(15) not null,
    Email VARCHAR(50),
    Date_Opened DATE,
    Status VARCHAR(20),
    Last_Transaction_Amount DECIMAL(10, 2)
);


#Insert records into the table with null values.

INSERT INTO Accounts (Account_ID, Customer_Name, Account_Type, Balance, Branch, Phone_Number, Email, Date_Opened, Status, Last_Transaction_Amount) 
VALUES
('AID001', 'Ramesh', null, 1050.00, 'Branch2', '12345678901', 'ramesh@bank.com', '2023-01-02', 'Active', 10.00),
('AID002', 'Suresh', 'Savings', 1100.00, 'Branch2', '12345678902', 'suresh@bank.com', '2023-01-03', 'Active', 20.00),
('AID003', 'Mahesh', 'Current', 1150.00, 'Branch1', '12345678903', 'mahesh@bank.com', '2023-01-04', 'Active', 30.00),
('AID004', 'Rajesh', 'Savings', 1200.00, 'Branch2', '12345678904', 'rajesh@bank.com', '2023-01-05', 'Dormant', 40.00),
('AID005', 'Anitha', 'Current', 1250.00, 'Branch2', '12345678905', 'anitha@bank.com', '2023-01-06', 'Active', 50.00),
('AID006', 'Padma', 'Savings', 1300.00, 'Branch1', '12345678906', 'padma@bank.com', '2023-01-07', 'Active', null),
('AID007', 'Kiran', 'Current', 1350.00, 'Branch2', '12345678907', 'kiran@bank.com', '2023-01-08', 'Active', 70.00),
('AID008', 'Swapna', 'Savings', 1400.00, null, '1234567889','swapna@bank.com', '2023-01-09', 'Dormant', 80.00),
('AID009', 'Ramya', 'Current', 1450.00, 'Branch1', '12345678909', 'ramya@bank.com', '2023-01-10', 'Active', 90.00),
('AID010', 'Harish', 'Savings', 1500.00, 'Branch2', '12345678910', 'harish@bank.com', '2023-01-11', 'Active', 100.00),
('AID011', 'Praveen', 'Current', 1550.00, 'Branch2', '12345678911', 'praveen@bank.com', '2023-01-12', 'Active', 110.00),
('AID012', 'Deepthi', 'Savings', 1600.00, 'Branch1', '12345678912', 'deepthi@bank.com', '2023-01-13', 'Dormant', 120.00),
('AID013', 'Sandhya', 'Current', 1650.00, 'Branch2', '12345678913', 'sandhya@bank.com', '2023-01-14', 'Active', 130.00),
('AID014', 'Vishal', 'Savings', 1700.00, null,'12345678914','vishal@bank.com', '2023-01-15', 'Active', 140.00),
('AID015', 'Lakshmi', 'Current', 1750.00, 'Branch1', '12345678915', 'lakshmi@bank.com', '2023-01-16', null, 150.00),
('AID016', 'Srinivas', 'Savings', 1800.00, 'Branch2', '12345678916', 'srinivas@bank.com', '2023-01-17', 'Dormant', 160.00),
('AID017', 'Venkatesh', 'Current', 1850.00, 'Branch2', '12345678917', 'venkatesh@bank.com', '2023-01-18', 'Active', 170.00),
('AID018', 'Sunitha', 'Savings',null, 'Branch1', '12345678918', 'sunitha@bank.com', '2023-01-19', 'Active', 180.00),
('AID019', 'Manjula', 'Current', 1950.00, 'Branch2', '12345678919', 'manjula@bank.com', '2023-01-20', 'Active', 190.00),
('AID020', 'Madhavi', 'Savings', 2000.00, 'Branch2', '12345678920', 'madhavi@bank.com', '2023-01-21', 'Dormant', 200.00),
('AID021', 'Shankar', 'Current', 2050.00, 'Branch1', '12345678921', 'shankar@bank.com', '2023-01-22', 'Active', 210.00),
('AID022', null, 'Savings', 2100.00, 'Branch2', '12345678922', 'bharathi@bank.com', '2023-01-23', 'Active', 220.00),
('AID023', 'Naveen', 'Current', 2150.00, 'Branch2', '12345678923', null, '2023-01-24', 'Active', 230.00),
('AID024', 'Charan', 'Savings', 2200.00, 'Branch1', '12345678924', 'charan@bank.com', '2023-01-25', 'Dormant', 240.00),
('AID025', 'Teja', 'Current', 2250.00, 'Branch2', '12345678925', 'teja@bank.com', '2023-01-26', 'null', 250.00);

select * from Accounts;

#applying all operators on same table.
# 1.Arithmectic Operation.
SELECT 
    Balance, 
    Last_Transaction_Amount,  
    Balance + Last_Transaction_Amount AS sum_result,          # Addition
    Balance - Last_Transaction_Amount AS difference_result,    # Subtraction
    Balance * Last_Transaction_Amount AS product_result,      # Multiplication
    Balance / Last_Transaction_Amount AS division_result,    # Division
    Balance % Last_Transaction_Amount AS modulus_result    # Modulus
FROM 
    Accounts;

# 2.Comparison operation

	select * from Accounts where  Balance = 1000;  # Equal
	select * from Accounts  where  Balance < 1590; # Lessthan
	select * from Accounts  where  Balance > 1000; # Greaterthan
    select * from Accounts  where   Account_Type != 'savings';  # NOT Equal
    select * from Accounts where Last_Transaction_Amount <= 100;  # Less than or Equal
    select * from Accounts where Last_Transaction_Amount >= 100;  # Greater than or Equal


#3. Logical operation.
select * from Accounts where Last_Transaction_Amount AND  Balance > '1100.00'; # And operator
select * from Accounts where Last_Transaction_Amount OR  Balance = '110.00'; # Or operator
select * from Accounts where not Last_Transaction_Amount = Balance ; # NOT operator


# 4. Concatenation operation.Using Concat()
SELECT 
    Account_Type, 
    Account_ID, 
    CONCAT(Account_Type, ' ', Account_ID) AS account_details
FROM 
    Accounts;


# 5. Like opertion

SELECT * FROM Accounts
WHERE Account_ID LIKE 'AID%'
  AND Email LIKE '%@bank%'
  AND Balance LIKE '%0';
  
  
  # 6. IN Operation
  SELECT * FROM Accounts
WHERE Account_ID IN ('AID001', 'AID006');
SELECT * FROM Accounts
WHERE Account_ID not in ('AID001', 'AID006');


#6. IS NULL and IS NOT NULL Operator.
 SELECT * FROM Accounts
WHERE Branch Is null;
 SELECT * FROM Accounts
WHERE Email Is not null;

#8 . BETWEEN Operation.
SELECT *FROM Accounts
WHERE Balance BETWEEN 1000 AND 5000;
SELECT *FROM Accounts
WHERE Last_Transaction_Amount NOT BETWEEN 50 and 100;




  












 

