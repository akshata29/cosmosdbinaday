-- Query Users and Books
SELECT
    U.ID
    , U.First_Name AS User_First_Name
    , U.Last_Name AS User_Last_Name
    , U.Active
    , B.Book_Title
    , B.Author_FirstName
    , B.Author_LastName
    , B.Book_Published_date
    , B.Book_isbn
    , UBC.Checkout_Date
    , UBC.Returned_Date
    , UBR.Evaluation_Date
    , UBR.Rating_Number
    , UBR.Review_Text
FROM CosmosDb.dbo.Users U
    LEFT JOIN CosmosDb.dbo.Users_Book_Checkouts UBC ON UBC.ID = U.ID
    LEFT JOIN CosmosDb.dbo.Books B ON B.Book_ID = UBC.Book_ID
    LEFT JOIN CosmosDb.dbo.Users_Book_Review UBR ON UBR.ID = U.ID AND UBR.Book_ID = B.Book_ID;

-- Query Users and Addresses
SELECT
    U.ID
    , A.street
    , A.street2
    , A.city
    , A.STATE
FROM CosmosDb.dbo.Users U
    LEFT JOIN CosmosDb.dbo.Users_Address UA ON U.ID = UA.ID
    LEFT JOIN CosmosDb.dbo.Addresses A ON A.Address_ID = UA.Address_ID;
