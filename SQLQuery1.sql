CREATE TABLE Users(
 UserId INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
	Email VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    UserType VARCHAR(20) NOT NULL
);
INSERT INTO Users (UserId, Username, Email, Password, UserType)
VALUES (1, 'Nouran','nouran.elsofi@gmail.com', 'Nouran.1234', 'customer'),
       (2, 'Amna','amna.yahia@gmail.com', 'Amna.1234', 'admin');




CREATE TABLE Aircrafts (
    AircraftId INT PRIMARY KEY,
    Model VARCHAR(50) NOT NULL,
	Manufacturer VARCHAR(100) NOT NULL
);

INSERT INTO Aircrafts (AircraftId,Manufacturer, Model)
VALUES (1, 'Boeing','Boeing 737'),
       (2, 'Airbus','Airbus A320');

CREATE TABLE Flights (
  FlightID INT PRIMARY KEY,
  Source VARCHAR(50) NOT NULL,
  Destination VARCHAR(50) NOT NULL,
  DepartureDate DATETIME NOT NULL,
  ArrivalDate DATETIME NOT NULL,
  AircraftID INT NOT NULL,
  FOREIGN KEY (AircraftID) REFERENCES Aircrafts (AircraftID)
);

INSERT INTO Flights (FlightID, Source, Destination, DepartureDate, ArrivalDate, AircraftID) 
VALUES
(1, 'New York', 'Los Angeles', '2023-06-01 08:00:00', '2023-06-01 10:30:00', 1),
(2, 'Los Angeles', 'New York', '2023-06-05 14:00:00', '2023-06-05 22:00:00', 1),
(3, 'London', 'Paris', '2023-06-10 10:00:00', '2023-06-10 12:00:00', 2);



CREATE TABLE Classes (
  ClassID INT PRIMARY KEY,
  ClassName VARCHAR(50) NOT NULL,
  ClassPrice INT NOT NULL
);
INSERT INTO Classes (ClassID, ClassName, ClassPrice) 
VALUES
(1, 'Economy', 60),
(2, 'Business', 80),
(3, 'First Class', 100);





CREATE TABLE Baggages(
	BaggageID INT PRIMARY KEY NOT NULL, 
	Weights INT NOT NULL
);
INSERT INTO Baggages( BaggageID, Weights)
Values( 12, 18),( 13, 16);




CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY NOT NULL,
	CustomerName VARCHAR(50) NOT NULL, 
	UserID INT NOT NULL, 
	BaggageID INT NOT NULL,
	CONSTRAINT FK_UserID FOREIGN KEY (UserID) REFERENCES Users(UserID),
	CONSTRAINT FK_BaggageID FOREIGN KEY (BaggageID) REFERENCES Baggages(BaggageID)
);


INSERT INTO Customers(CustomerID, CustomerName, UserID,BaggageID)
Values( 100,'Nouran',1,12);



CREATE TABLE Admins(
	AdminsID INT PRIMARY KEY NOT NULL,
	AdminNamee varchar(100) NOT NULL,
	User_IDD INT NOT NULL,
	CONSTRAINT FK_UserIDD1 FOREIGN KEY (User_IDD) REFERENCES Users(UserID)
);

INSERT INTO Admins(AdminsID,AdminNamee,User_IDD)
Values(50, 'Amna', 2);



CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  BookingDate DATETIME NOT NULL,
  NumberOfSeats INT NOT NULL,
  CustomerID INT NOT NULL,
  FlightID INT NOT NULL,
  ClassID INT NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (FlightID) REFERENCES Flights (FlightID),
  FOREIGN KEY (ClassID) REFERENCES Classes (ClassID)
);
ALTER TABLE Users DROP COLUMN UserType;

Select * FROM Users;
SELECT * FROM Aircrafts;
SELECT * FROM Admins;
SELECT * FROM Classes;
SELECT * FROM Flights;
SELECT * FROM Customers;