CREATE TABLE [dbo].[FavouriteColours]
(
	[PersonId] INT NOT NULL , 
    [ColourId] INT NOT NULL, 
    CONSTRAINT [CK_FavouriteColours_Column] CHECK (1 = 1), 
    CONSTRAINT [PK_FavouriteColours] PRIMARY KEY CLUSTERED ([PersonId] ASC) 
)
