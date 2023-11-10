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

CREATE EXTERNAL TABLE dbo.fact_trips
WITH (
	LOCATION = 'fact_trips',
	DATA_SOURCE = [rayfilesystem_rayworkspace_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
AS
SELECT
    t.trip_id,
    t.rideable_type,
    TRY_CONVERT(DATE, t.start_at) AS start_at,
    TRY_CONVERT(DATE, t.ended_at) AS end_at,
    DATEDIFF(HOUR, TRY_CONVERT(DATE, t.start_at), TRY_CONVERT(DATE, t.ended_at)) AS duration,
    DATEDIFF(YEAR, r.birthday, TRY_CONVERT(DATE, t.start_at)) AS age,
    t.start_station_id,
    t.end_station_id,
    t.rider_id,
    TRY_CONVERT(INT, FORMAT((TRY_CONVERT(DATE, t.start_at)), 'yyyyMMdd')) AS date_id
FROM [dbo].[stg_trips] AS t
LEFT JOIN dim_riders AS r ON t.rider_id = r.rider_id
GO


SELECT TOP 100 * FROM dbo.fact_trips
GO