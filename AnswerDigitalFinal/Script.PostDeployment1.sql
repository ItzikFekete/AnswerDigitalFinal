/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


MERGE INTO Colours AS Target 
USING (VALUES
(1, 'Red', 1),
(2, 'Green', 1),
(3, 'Blue', 1)
)
AS SOURCE (ColourId, Name, IsEnabled)
ON Target.ColourId=Source.ColourId
WHEN NOT MATCHED BY TARGET THEN 
INSERT (LastName)
Values (LastName);

MERGE INTO FavouriteColours as TARGET
USING (Values
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(3,2),
(3,3)
)
AS Source (ColourId)
ON Target.PersonID=SOURCE.PersonID
WHEN NOT MATCHED BY TARGET THEN 
INSERT (ColourId)
Values (ColourId); 

MERGE INTO PEOPLE AS TARGET 
USING (VALUES
(1, 'Willis', 'Tibbs', 0,1,0),
(2, 'Sharon', 'Halt', 0,0,0),
(3, 'Patrick','Kerr', 0,1,1),
(4,'Lilly', 'Hale', 0,0,0),
(5, 'Joel', 'Daly', 0,1,1),
(6, 'Imogen', 'Kent', 0,0,0),
(7, 'George', 'Edwards', 0,1,0),
(9, 'Gabriel', 'Francis', 0,0,0),
(10, 'Brian', 'Allen', 0,1,1 ),
(11, 'Bo', 'Bob', 1,1,0)
)
AS Source (PersonId, FirstName, LastName, IsAuthorised, IsEnabled)
ON Target.PersonId=Source.PersonId
WHEN NOT MATCHED BY TARGET THEN 
INSERT (FirstName, LastName)
VALUES (FirstName, LastName);
