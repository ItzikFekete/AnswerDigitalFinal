CREATE TABLE [dbo].[TechTest]
(
	[Id] INT Identity (1,1) NOT NULL , 
    [PersonID] INT NOT NULL, 
    [ColourId] INT NOT NULL, 
    PRIMARY KEY Clustered ([Id] ASC), 
    CONSTRAINT [FK_dbo.TechTest_dbo.FavouriteColours_PersonrId] Foreign Key ([PersonId])
	References [dbo].[FavouriteColours] ([PersonId]) ON DELETE Cascade, 
	CONSTRAINT [FK_dbo.TechTest_dbo.Colours_ColourId] Foreign Key ([ColourId])
	References [dbo]. [Colours] ([ColourId]) ON DELETE Cascade, 
	CONSTRAINT [FK_dbo.TechTest_dbo.People_PersonId] Foreign Key ([PersonId])
	References [dbo].[People] ([PersonId]) ON DELETE Cascade

)
