IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'rayfilesystem_rayworkspace_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [rayfilesystem_rayworkspace_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://rayfilesystem@rayworkspace.dfs.core.windows.net' 
	)
GO
-- USE CETAS to export select statement

CREATE EXTERNAL TABLE dbo.dim_riders
WITH (
	LOCATION = 'dim_riders',
	DATA_SOURCE = [rayfilesystem_rayworkspace_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
AS
SELECT rider_id
,first AS first_name
,last AS last_name
,address
,TRY_CONVERT(DATE, birthday) AS birthday
,TRY_CONVERT(DATE, account_start_date) AS account_start_date
,TRY_CONVERT(DATE, account_end_date) AS account_end_date
,is_member
FROM [dbo].[stg_riders];
GO


SELECT TOP 100 * FROM dbo.dim_riders
GO