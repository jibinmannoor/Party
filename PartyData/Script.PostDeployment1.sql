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
Merge INTO Guest AS Target
USING (VALUES 
        (1, 'Tibbetts', 'Donnie','jibinjmannoor@gmail.com','015218267583'), 
        (2, 'sfsfs', 'fsdf','jibfss@gmail.com','015218256756'), 
	(3, 'dfgdg', 'sgdfgdf', 'fgsdgdfgd@gmail.com','015218267638')
)
AS Source (ID, LastName, FirstName,Email,Number)
ON Target.ID = Source.ID
WHEN NOT MATCHED BY TARGET THEN
INSERT (LastName, FirstName, Email,Number)
VALUES (LastName, FirstName, Email,Number);
