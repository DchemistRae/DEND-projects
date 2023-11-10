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

CREATE EXTERNAL TABLE dbo.dim_date
WITH (
	LOCATION = 'dim_date',
	DATA_SOURCE = [rayfilesystem_rayworkspace_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
AS
SELECT TRY_CONVERT(INT, FORMAT(date, 'yyyyMMdd')) AS date_id,
        date,
        YEAR(date) AS year,
        DATEPART(QUARTER, date) AS quarter,
        MONTH(date) AS month,
        DATEPART(WEEK, date) AS week,
        DAY(date) AS day
FROM [dbo].[stg_date]
GO


SELECT TOP 100 * FROM dbo.dim_date
GO