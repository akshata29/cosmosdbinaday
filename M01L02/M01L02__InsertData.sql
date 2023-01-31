--INSERT DATA INTO RELATIONAL TABLES
INSERT INTO CosmosDb.dbo.Users(id, First_Name, Last_Name, Active) 
VALUES
    (1,'Jhon','Lee', 'Yes'),
    (2, 'Mayer','Robert', 'NO'),
    (3, 'Abue','Wali', 'Yes'),
    (4, 'Bill','West', 'Yes'),
    (5, 'Joe','Rog', 'Yes');

INSERT INTO CosmosDb.dbo.Addresses (Address_ID, street, street2, city, state) 
VALUES
    (1, '12 East 23 Street', 'Floor 3', 'New York', 'NY'),
    (2, '23 West 50 Street', 'Apt 4', 'New York', 'NY'),
    (3, '123 Main Street', Null, 'Brooklyn ', 'NY'),
    (4, '10 East 21 Street', 'Apt 1010', 'Brooklyn ', 'NY'),
    (5, '21 West 43 Street', Null, 'Brooklyn ', 'NY');

INSERT INTO CosmosDb.dbo.Users_Address (ID, Address_ID)
VALUES
    (1, 3),
    (1, 2),
    (2, 4),
    (3, 1),
    (4, 2),
    (5, 5);

INSERT INTO CosmosDb.dbo.Books (Book_ID, Book_Title, Author_FirstName, Author_LastName, Book_isbn, Book_Published_date) 
VALUES
    (1, 'First CosmosDB Book', 'Jhon','Lee','2323232', DATEADD(SECOND, -911.6*24*60*60, GETDATE())),
    (2, 'Second CosmosDB Book', 'Alice','Robert','234323', DATEADD(SECOND, -822.9*24*60*60, GETDATE())),
    (3, 'Third ComosDB Book', 'Joe', 'Pesci','434321', DATEADD(SECOND, -751.1*24*60*60, GETDATE())),
    (4, 'Fourth ComosDB Book', 'Michael', 'Lee','121242', DATEADD(SECOND, -623.1*24*60*60, GETDATE())),
    (5, 'Fifth ComosDB Book', 'Jannette', 'Lawrence','9471274', DATEADD(SECOND, -541.6*24*60*60, GETDATE())),
    (6, 'Sixth ComosDB Book', 'Charles', 'Garcia','6351849', DATEADD(SECOND, -404.2*24*60*60, GETDATE())),
    (7, 'Seven ComosDB Book', 'William', 'Santos','1227514', DATEADD(SECOND, -333.1*24*60*60, GETDATE())),
    (8, 'Eight ComosDB Book', 'Lisa', 'Rossi','89365782', DATEADD(SECOND, -100.6*24*60*60, GETDATE()));

INSERT INTO CosmosDb.dbo.Users_Book_Review (ID, Book_ID, Review_Text, Rating_number, Evaluation_Date) 
VALUES
    (1, 5, 'Best Cosmos DB Book EVER!!!', 5, DATEADD(SECOND, (10.6+5.1)*24*60*60, GETDATE())),
    (1, 1, 'Not bad for the first book in the Series', 3, DATEADD(SECOND, (11.6+9.7)*24*60*60, GETDATE())),
    (2, 1, 'Good for novices', 4, DATEADD(SECOND, (7.6+70.3)*24*60*60, GETDATE())),
    (2, 2, 'Book did not cover Change Feed... Booo!!!', 1, DATEADD(SECOND, (21.6+30.3)*24*60*60, GETDATE())),
    (2, 4, 'Excellent examples, taught me a lot', 5, DATEADD(SECOND, (50.6+52.4)*24*60*60, GETDATE())),
    (2, 6, 'Could have used more demos', 3, DATEADD(SECOND, (11.6+31.3)*24*60*60, GETDATE())),
    (5, 8, 'Book covered C#, Python and Java APIs, loved this book.', 5, DATEADD(SECOND, (29.2+12.2)*24*60*60, GETDATE()));

INSERT INTO CosmosDb.dbo.Users_Book_Checkouts (ID, Book_ID, Checkout_Date, Returned_Date)
VALUES 
    (1, 5, DATEADD(SECOND, 10.6*24*60*60, GETDATE()), DATEADD(SECOND, 29.6*24*60*60, GETDATE())),
    (1, 1, DATEADD(SECOND, 11.6*24*60*60, GETDATE()), DATEADD(SECOND, 24.5*24*60*60, GETDATE())),
    (1, 7, DATEADD(SECOND, 8.6*24*60*60, GETDATE()), Null),
    (2, 1, DATEADD(SECOND, 7.6*24*60*60, GETDATE()), DATEADD(SECOND, 121.3*24*60*60, GETDATE())),
    (2, 2, DATEADD(SECOND, 21.6*24*60*60, GETDATE()), DATEADD(SECOND, 91.8*24*60*60, GETDATE())),
    (2, 4, DATEADD(SECOND, 50.6*24*60*60, GETDATE()), DATEADD(SECOND, 150*24*60*60, GETDATE())),
    (2, 6, DATEADD(SECOND, 11.6*24*60*60, GETDATE()), Null),
    (2, 8, DATEADD(SECOND, 9.6*24*60*60, GETDATE()), Null),
    (3, 3, DATEADD(SECOND, 14.6*24*60*60, GETDATE()), Null),
    (5, 8, DATEADD(SECOND, 29.2*24*60*60, GETDATE()), DATEADD(SECOND, 53.1*24*60*60, GETDATE()));
