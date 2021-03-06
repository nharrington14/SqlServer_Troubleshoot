USE [master]
GO
ALTER DATABASE [Insert_Databasehere] SET  RESTRICTED_USER WITH ROLLBACK IMMEDIATE
GO


RESTORE DATABASE [Insert_Databasehere] FROM  
DISK = N'\\xxxx\SQLBackup\[InsertFormerServer]\[Insert_Database]\[Backup_File_Name].bak' 
WITH  RESTRICTED_USER,  FILE = 1,  MOVE N'[Datafile_Logical]' TO N'X:\MSSQL\DATA\[Datafile_name].mdf', 
 MOVE N'[Logfile_logical]' TO N'X:\MSSQL\LOGS\[Logfile_name].ldf', [keep_cdc], NOUNLOAD,  REPLACE,  STATS = 10
GO

USE [master]
GO
ALTER DATABASE [Insert_Databasehere] SET  MULTI_USER
GO