PRAGMA foreign_keys = ON;


CREATE TABLE Deliveries (
 leveransId VARCHAR (60) PRIMARY KEY NOT NULL,
 companyName VARCHAR(80) NOT NULL,
 contactPerson VARCHAR(100) NOT NULL,
 adress VARCHAR(40) NOT NULL,
 phone VARCHAR(40) NULL,
 eMail VARCHAR(30) NOT NULL
);


CREATE TABLE Goods(
    artNr VARCHAR(50) PRIMARY KEY NOT NULL,
    nameOfItem VARCHAR(30) NOT NULL,
    pricePerKilo REAL(20)  NULL,
   leveransId VARCHAR(60) NOT NULL, 
   FOREIGN KEY (leveransId) REFERENCES Deliveries (leveransId) 
);



CREATE TABLE Products(
productId VARCHAR (30) PRIMARY KEY NOT NULL,
productType VARCHAR(40) NULL,
productName VARCHAR (30) NOT NULL
);


CREATE TABLE RecipeItems(
productId VARCHAR(30) NOT NULL,
amountKg REAL NOT NULL,
artNr VARCHAR(50)NOT NULL,
FOREIGN KEY (productId) REFERENCES Products (productId),
FOREIGN KEY (artNr) REFERENCES Goods (artNr),
PRIMARY KEY (productId, artNr)

);



CREATE TABLE LagerSaldo (
    inKop VARCHAR(50) PRIMARY KEY NOT NULL,
    demand VARCHAR (128) Not NULL,
    saldo VARCHAR (100) NOT NULL,
    newOrderDate DATETIME NOT NULL,
    artNr VARCHAR(50) NOT NULL,
     FOREIGN KEY (artNr) REFERENCES Goods(artNr)
);

