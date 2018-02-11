CREATE TABLE [dbo].[Guest]
(
	 [ID]      INT           IDENTITY (1, 1) NOT NULL,
    [LastName]       NVARCHAR (50) NULL,
    [FirstName]      NVARCHAR (50) NULL,
	[Email]       NVARCHAR (50) NULL,
	[Number]       NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
)
