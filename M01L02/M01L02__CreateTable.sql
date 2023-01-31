-- CREATE RELATIONAL TABLES
IF OBJECT_ID('CosmosDb.dbo.Users', 'U') IS NULL 
    CREATE TABLE CosmosDb.dbo.Users (
        ID INT PRIMARY KEY
        , First_Name VARCHAR(255)
        , Last_Name VARCHAR(255)
        , Active CHAR(10)
        , CreateDate DATETIME DEFAULT(GETDATE())
    );

IF OBJECT_ID('CosmosDb.dbo.Addresses', 'U') IS NULL 
    CREATE TABLE CosmosDb.dbo.Addresses (
        Address_ID INT PRIMARY KEY
        ,street VARCHAR(30) NOT NULL
        ,street2 VARCHAR(30) 
        ,city VARCHAR(30) NOT NULL
        ,STATE VARCHAR(30) NOT NULL
    );

IF OBJECT_ID('CosmosDb.dbo.Users_Address', 'U') IS NULL 
    CREATE TABLE CosmosDb.dbo.Users_Address (
        ID INT
        , Address_ID INT
        , FOREIGN KEY (ID) REFERENCES users(ID) ON DELETE CASCADE
        , FOREIGN KEY (Address_ID) REFERENCES Addresses(Address_ID) ON DELETE CASCADE
        , PRIMARY KEY(ID, Address_ID)
    );

IF OBJECT_ID('CosmosDb.dbo.Books', 'U') IS NULL 
    CREATE TABLE CosmosDb.dbo.Books (
        Book_ID INT PRIMARY KEY
        , Book_Title VARCHAR(100) NOT NULL
        , Author_FirstName VARCHAR(100) NOT NULL
        , Author_LastName VARCHAR(100) NOT NULL
        , Book_isbn CHAR(12) UNIQUE
        , Book_Published_date DATETIME NOT NULL DEFAULT(GETDATE())
    );

IF OBJECT_ID('CosmosDb.dbo.Users_Book_Review', 'U') IS NULL 
    CREATE TABLE CosmosDb.dbo.Users_Book_Review (
        ID INT
        , Book_ID INTEGER NOT NULL
        , Review_Text VARCHAR(MAX)
        , Rating_Number INT
        , Evaluation_Date DATETIME DEFAULT(GETDATE())
        , PRIMARY KEY (ID, Book_ID, Evaluation_Date)
        , FOREIGN KEY (ID) REFERENCES Users(ID) ON DELETE CASCADE
        , FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
    );

IF OBJECT_ID('CosmosDb.dbo.Users_Book_Checkouts', 'U') IS NULL 
    CREATE TABLE CosmosDb.dbo.Users_Book_Checkouts (
        ID INT
        , Book_ID INT NOT NULL
        , Checkout_Date DATETIME NOT NULL DEFAULT(GETDATE())
        , Returned_Date DATETIME 
        , PRIMARY KEY (ID, Book_ID, Checkout_Date)
        , FOREIGN KEY (ID) REFERENCES Users(ID) ON DELETE CASCADE
        , FOREIGN KEY (book_id) REFERENCES Books(Book_ID) ON DELETE CASCADE
    );
