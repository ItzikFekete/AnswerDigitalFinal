CREATE TABLE [dbo].[People]
(
	[PersonId] INT NOT NULL , 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [IsAuthorised] BIT NOT NULL, 
    [IsEnabled] BIT NOT NULL, 
    CONSTRAINT [CK_People_Column] CHECK (1 = 1), 
    CONSTRAINT [PK_People] PRIMARY KEY Clustered ([PersonId] ASC)
)
