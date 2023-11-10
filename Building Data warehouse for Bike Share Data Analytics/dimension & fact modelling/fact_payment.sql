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

CREATE EXTERNAL TABLE dbo.fact_payment
WITH (
	LOCATION = 'fact_payment',
	DATA_SOURCE = [rayfilesystem_rayworkspace_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
AS
SELECT payment_id
,amount
,rider_id
,TRY_CONVERT(INT, FORMAT((TRY_CONVERT(DATE, date)), 'yyyyMMdd')) AS date_id
 FROM [dbo].[stg_payments];
GO


SELECT TOP 100 * FROM dbo.fact_payment
GO