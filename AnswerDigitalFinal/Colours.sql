CREATE TABLE [dbo].[Colours]
(
	[ColourId] INT Identity(1,1) NOT NULL, 
    [LastName1] NVARCHAR(50) NOT NULL, 
    [IsEnabled] BIT NOT NULL, 
    CONSTRAINT [PK_Colours_Column] CHECK (1 = 1), 
    CONSTRAINT [PK_Colours] PRIMARY KEY CLUSTERED ([ColourId] ASC)
)
GO


